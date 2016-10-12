#coding: utf-8
from django.shortcuts import render_to_response
from django.core.urlresolvers import reverse
from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.template import RequestContext
from django.core.paginator import Paginator, EmptyPage, InvalidPage, PageNotAnInteger
from django.contrib.auth.decorators import login_required
import os

def my_render(template,data,request):
    return render_to_response(template, data, context_instance=RequestContext(request))

def get_username(request):
    """
        获取登录用户的用户名返回给前端使用
    """
    if request.user.is_authenticated():
        username = request.user
        return username
    else:
        return None
def get_object_all(model):
    """
        获取数据库所有的对象列表
    """
    the_object = model.objects.all()
    return the_object

def get_object_by_id(model,**kwargs):
    """
        使用该函数来获取数据库查询传递id过来
    """
    for value in kwargs.values():
        if not value:
            return None
    the_object = model.objects.filter(**kwargs)
    if len(the_object) == 1:
        the_object = the_object
    else:
        the_object = None
    return the_object

def objects_save(model,**kwargs):
    model(**kwargs)
    model.save()
    
def get_object(model, **kwargs):
    for value in kwargs.values():
        if not value:
            return None
    the_object = model.objects.filter(**kwargs)
    return the_object

def getpage_id(request):
    """
        传递前端的page过来的值，如果没有设置为1
    """
    page = request.GET.get("page","")
    if page:
        page = request.GET.get("page","")
    else:
        page = 1
    return page

def getpages(Data,page):
    """
    #处理分页函数
    """
    paginator = Paginator(list(Data),5)
    try:
        Data = paginator.page(page)
    except PageNotAnInteger:
        Data = paginator.page(1)
    except EmptyPage:
        Data = paginator.page(paginator.num_pages)
    return Data,page

def All_in_one(request,All_page_info):
    DataCount = len(All_page_info)
    page = getpage_id(request)
    All_page_info,page=getpages(All_page_info,page)
    return DataCount,page,All_page_info
