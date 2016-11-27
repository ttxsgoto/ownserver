#coding: utf-8
from django.shortcuts import render_to_response
from django.core.urlresolvers import reverse
from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.template import RequestContext
from django.core.paginator import Paginator, EmptyPage, InvalidPage, PageNotAnInteger
from django.contrib.auth.decorators import login_required
import os,datetime
import xlsxwriter

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


def write_excel(data_all):
    data = []
    now = datetime.datetime.now().strftime('%Y_%m_%d_%H_%M')
    file_name = 'cmdb_excel_' + now + '.xlsx'
    workbook = xlsxwriter.Workbook('static/files/excels/%s' % file_name)
    worksheet = workbook.add_worksheet(u'资产数据')
    worksheet.set_first_sheet()
    worksheet.set_column('A:E', 15)
    worksheet.set_column('F:F', 15)
    worksheet.set_column('G:Z', 15)
    title = [u'机房', u'外网IP', u'内网IP',u'CPU(核)', u'内存(G)', u'磁盘空间',
             u'状态', u'设备类型', u'序列号',u'备注',u'创建时间']
    for i in data_all:
        idc = i.idc.name
        externalip1 = i.externalip1
        internalip1 = i.internalip1
        cpu = i.cpu
        memory = i.memory
        disk = i.disk
        status = i.status.status
        host_type = i.host_type.type
        number = i.number
        comment = i.comment
        date_added = i.date_added
        server_dic = [idc,externalip1,internalip1,cpu,memory,disk,status,host_type,number,comment,date_added]
        #print server_dic
        data.append(server_dic)
    format = workbook.add_format()  #每项的格式设置
    format.set_border(1)
    format.set_align('center')
    format.set_align('vcenter')
    format.set_text_wrap()

    format_title = workbook.add_format()    #标题格式
    format_title.set_border(1)
    format_title.set_bg_color('#cccccc')
    format_title.set_align('center')
    format_title.set_bold()  
    
    format_ave = workbook.add_format()
    format_ave.set_border(1)
    format_ave.set_num_format('0.00')

    worksheet.write_row('A1', title, format_title)
    i = 2
    for server_dic1 in data:
        location = 'A' + str(i)
        worksheet.write_row(location, server_dic1, format)
        i += 1 
    workbook.close()
    ret = (True, file_name)
    return ret   
        


