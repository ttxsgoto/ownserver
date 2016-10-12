#!/usr/bin/env python
#coding: utf-8

from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render_to_response,RequestContext
from django.contrib.auth.decorators import login_required
from UserManage.views.permission import PermissionVerify
from ownserver.api import *
from UserManage.models import RoleList,PermissionList,User

@login_required
@PermissionVerify()
def ListRole(request):
    mList = RoleList.objects.all()
    if request.user.is_authenticated():    
        username = request.user
    #分页功能
    DataCount,page,All_page_info = All_in_one(request,mList)
    print DataCount,page,All_page_info
    return my_render('UserManage/role_list.html',locals(),request)

@login_required
@PermissionVerify()
def AddRole(request):
    username=get_username(request)
    if request.method == 'GET':
        Roleinfo = get_object_all(PermissionList)
        return my_render("UserManage/role_add.html",locals(),request)
    if request.method == "POST":
        request_dict = request.POST
        name = request.POST.get('name')
        urllist = request.POST.getlist('asset_select',[])
        if RoleList.objects.filter(name=name):
            return HttpResponse("<script language='javascript'>alert('角色名称已存在，请再次确认！！！');window.history.back(-1);</script>")
        else:
            r1 = RoleList(name=name)
            r1.save()
            for i in urllist:
                r1.permission.add(i)
        r1.save()
    return HttpResponseRedirect(reverse('role_list'))

@login_required
@PermissionVerify()
def EditRole(request):
    username=get_username(request)
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('role_list'))
    else:
        Roleinfo = get_object_all(PermissionList)
        id = request.GET.get('id','')
        print id
        ro_list = RoleList.objects.filter(id = id)
        #获取该用户已有的权限列表
        Hadrole = RoleList.objects.get(id = id).permission.all()
        return my_render('UserManage/role_edit.html',locals(),request)

def SaveRole(request):
    username=get_username(request)
    if request.method == 'POST':
        name = request.POST.get('name')
        asset_list = request.POST.getlist('asset_select',[])
        id = int(request.POST.get('id',''))
        asset_list = list(set(asset_list))
        RoleList.objects.filter(id=id).update(name=name)
        #先清除现有的权限，然后在更新
        RoleList.objects.get(id=id).permission.clear()
        for i in asset_list:
            RoleList.objects.get(id=id).permission.add(i)  
    return HttpResponseRedirect(reverse('role_list'))
    
@login_required
@PermissionVerify()
def DeleteRole(request):
    username=get_username(request) 
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('role_list'))
    else:
        id = request.GET.get('id','')
        RoleList.objects.filter(id = id).delete()
        return HttpResponseRedirect(reverse('role_list'))
