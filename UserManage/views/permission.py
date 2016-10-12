#!/usr/bin/env python
#coding: utf-8

from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render_to_response,RequestContext
from django.contrib.auth.decorators import login_required
from ownserver.api import *
from UserManage.models import User,RoleList,PermissionList

def PermissionVerify():
    '''权限认证模块,
        此模块会先判断用户是否是管理员（is_superuser为True），如果是管理员，则具有所有权限,
        如果不是管理员则获取request.user和request.path两个参数，判断两个参数是否匹配，匹配则有权限，反之则没有。
    '''
    def decorator(view_func):
        def _wrapped_view(request, *args, **kwargs):
            iUser = User.objects.get(username=request.user)
            print "iUser----------%s" %iUser

            if not iUser.is_superuser: #判断用户如果是超级管理员则具有所有权限
                if not iUser.role: #如果用户无角色，直接返回无权限
                    return HttpResponseRedirect(reverse('permission_deny'))
                role_permission = RoleList.objects.get(name=iUser.role)         #通过roleid获取对应的组信息                
                role_permission_list = role_permission.permission.all()     #通过组来获取对应url的地址
                matchUrl = []
                for x in role_permission_list:
                    if request.path == x.url or request.path.rstrip('/') == x.url: #精确匹配，判断request.path是否与permission表中的某一条相符
                        matchUrl.append(x.url)
                    elif request.path.startswith(x.url): #判断request.path是否以permission表中的某一条url开头
                        matchUrl.append(x.url)
                    else:
                        pass
                print '%s---->matchUrl:%s' %(request.user,str(matchUrl))
                if len(matchUrl) == 0:
                    return HttpResponseRedirect(reverse('permission_deny'))
            else:
                print "-----------------管理员"
                pass
            return view_func(request, *args, **kwargs)
        return _wrapped_view
    return decorator

@login_required
def NoPermission(request):
    username=get_username(request)
    return my_render('UserManage/nopermission.html',locals(),request)

@login_required
@PermissionVerify()
def AddPermission(request):
    username=get_username(request)
    if request.method == 'GET':
        Roleinfo = get_object_all(PermissionList) 
        return my_render("UserManage/permission_add.html",locals(),request)
    else:
        request_dict = request.POST
        url = request.POST.get('url')
        id = int(request.POST.get('id'))
        print url
        if PermissionList.objects.filter(url=url):
            return HttpResponse("<script language='javascript'>alert('权限已存在，请再次确认！！！');window.history.back(-1);</script>")
        if PermissionList.objects.filter(id=id):
            return HttpResponse("<script language='javascript'>alert('序列ID已存在，请再次确认！！！');window.history.back(-1);</script>")
        data = {k: v for k, v in request_dict.items()}
        permission=PermissionList(**data)
        permission.save()
    return HttpResponseRedirect(reverse('permission_list'))

@login_required
@PermissionVerify()
def ListPermission(request):
    mList = PermissionList.objects.all().order_by('-id')
    if request.user.is_authenticated():	
	    username = request.user

    #分页功能
    DataCount,page,All_page_info = All_in_one(request,mList)
    print DataCount,page,All_page_info
    return my_render('UserManage/permission_list.html',locals(),request)

@login_required
@PermissionVerify()
def EditPermission(request):
    username=get_username(request)
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('permission_list'))
    else:
        id = request.GET.get('id','')
        Permission_list = PermissionList.objects.filter(id = id)
        return my_render('UserManage/permission_edit.html',locals(),request)

@login_required
@PermissionVerify()
def SavePermission(request):
    username=get_username(request)
    if request.method == 'POST':
        request_dict = request.POST
        data = {k: v for k, v in request_dict.items()}
        id = request.POST.get('id')
        PermissionList.objects.filter(id=id).update(**data)
    return HttpResponseRedirect(reverse('permission_list'))

@login_required
@PermissionVerify()
def DeletePermission(request):
    username=get_username(request) 
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('permission_list'))
    else:
        id = request.GET.get('id','')
        PermissionList.objects.filter(id = id).delete()
        return HttpResponseRedirect(reverse('permission_list'))
