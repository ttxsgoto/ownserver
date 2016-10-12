#!/usr/bin/env python
#coding: utf-8

from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render_to_response,RequestContext
from django.contrib.auth.decorators import login_required
from UserManage.views.permission import PermissionVerify
from ownserver.api import *
from django.contrib import auth
from UserManage.models import User,RoleList,PermissionList
import json

def LoginUser(request):
    '''用户登录view'''
    if request.user.is_authenticated():
        username = request.user
        return HttpResponseRedirect('/')
    if request.method == 'GET' and request.GET.has_key('next'):
        next = request.GET['next']
    else:
        next = '/'
    if request.method == "POST":
        username = request.POST.get('username',None)
        password = request.POST.get('password',None)
        if username and password:
            user = auth.authenticate(username=username, password=password)
            if user is not None and user.is_active:
                request.session['is_login']={'username':username}
                print request.session.get('is_login',None)
                request.session.set_expiry(3600)
                auth.login(request, user)
                return HttpResponseRedirect(request.POST['next']) #重定向到/ ，url中
            else:
                error = "用户名或密码错误!!"             
                return render_to_response('UserManage/login.html',locals(),RequestContext(request))    
    else:
        kwvars = {
            'request':request,
            'next':next,
        }
        return render_to_response('UserManage/login.html',locals(),RequestContext(request))

#@login_required
def LogoutUser(request):
    del request.session['is_login']
    auth.logout(request)
    return HttpResponseRedirect(reverse('login'))

@login_required
def ChangePassword(request):
    username=get_username(request)
    if request.method == 'POST':
        passwd = request.POST.get("password1")
        u = User.objects.get(username=username)
        u.set_password(passwd)
        u.save()
        return HttpResponse("<script language='javascript'>alert('密码修改成功!!');window.history.back(-1);</script>")
    else:
        return my_render('UserManage/changepwd.html',locals(),request)

@login_required
@PermissionVerify()
def ListUser(request):
    mList = User.objects.all()
    if request.user.is_authenticated():
        username = request.user
    #分页功能
    DataCount,page,All_page_info = All_in_one(request,mList)
    print DataCount,page,All_page_info
    return my_render('UserManage/user_list.html',locals(),request)

@login_required
@PermissionVerify()
def AddUser(request):
    username=get_username(request)
    if request.method == 'GET':
        Roleinfo = get_object_all(RoleList) 
        return my_render("UserManage/user_add.html",locals(),request)
    else:
        request_dict = request.POST
        username = request.POST.get('username')
        password = request.POST.get('password')
        if User.objects.filter(username=username):
            return HttpResponse("<script language='javascript'>alert('用于已存在，请再次确认！！！');window.history.back(-1);</script>")
        role = request.POST.get('role')
        data = {k: v for k, v in request_dict.items()}
        del data['password'],data['role']
        user=User(**data)
        user.set_password(password)
        user.save()
        User.objects.filter(username=username).update(role=role)
    return HttpResponseRedirect(reverse('user_list'))

@login_required
@PermissionVerify()
def DeleteUser(request):
    username=get_username(request) 
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('user_list'))
    else:
        id = request.GET.get('id','')
        if id == '1':
            return HttpResponse("<script language='javascript'>alert('超级管理员不能删除，请再次确认！！');window.history.back(-1);</script>")
        else:
            User.objects.filter(id = id).delete()        
        return HttpResponseRedirect(reverse('user_list'))

@login_required
@PermissionVerify()
def EditUser(request):
    username=get_username(request)
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('user_list'))
    else:
        id = request.GET.get('id','')
        Userlist = User.objects.filter(id = id)
        Rolelist = RoleList.objects.all()
        Isactive=[1,0]
        Sex = {"M":"男","W":"女"}
        return my_render('UserManage/user_edit.html',locals(),request)

@login_required
@PermissionVerify()
def SaveUser(request):
    username=get_username(request)
    if request.method == 'POST':
        request_dict = request.POST
        data = {k: v for k, v in request_dict.items()}
        id = request.POST.get('id')
        is_active = int(request.POST.get("is_active"))
        User.objects.filter(id=id).update(**data) 
        User.objects.filter(id=id).update(is_active=is_active) 
    return HttpResponseRedirect(reverse('user_list'))

@login_required
@PermissionVerify()
def ResetPassword(request):
    username=get_username(request)
    if request.method == 'GET':
        id = request.GET.get('id','')
        user = auth.get_user_model().objects.get(id = id)
        now_username=user.username
        newpassword = auth.get_user_model().objects.make_random_password(length=10,allowed_chars='abcdefghjklmnpqrstuvwxyABCDEFGHJKLMNPQRSTUVWXY1234567890')
        print 'ResetPassword:%s-->%s' %(user.username,newpassword)
        user.set_password(newpassword)
        user.save()
    return my_render('UserManage/resetpwd.html',locals(),request)
