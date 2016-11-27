#coding: utf-8

from ownserver.api import *
from models import *
from UserManage.views.permission import PermissionVerify

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def idc_manage(request):
    username=get_username(request)
    idcmanage = get_object_all(IDC)   
    return my_render("serverinfo/idc_manage.html",locals(),request)

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def idc_add(request):
    username=get_username(request)
    if request.method == 'GET':
        return my_render("serverinfo/idc_add.html",locals(),request)   
    else:
        request_dict = request.POST
        data = {k: v for k, v in request_dict.items()}
        idc_info = IDC(**data)
        idc_info.save()
    return HttpResponseRedirect(reverse('idc_manage'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def idc_edit(request):
    username=get_username(request)
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('idc_manage'))
    else:
        idc_id = request.GET.get('id', '')
        idcmanage = get_object_by_id(IDC,id=idc_id)
        return my_render('serverinfo/idc_edit.html', locals(), request)

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def idc_save(request):
    username=get_username(request)
    if request.method == 'POST':
        request_dict = request.POST
        data = {k: v for k, v in request_dict.items()}
        id = request.POST.get('id')
        idc_info = IDC.objects.filter(id=id).update(**data)
        return HttpResponseRedirect(reverse('idc_manage'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def idc_del(request):
    username=get_username(request) 
    if request.method == 'GET':
        id = request.GET.get('id','')
        idcmanage = get_object_by_id(IDC,id=id)
        idcmanage.delete()    
    return HttpResponseRedirect(reverse('idc_manage'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_type(request):
    username=get_username(request)
    devicetype = get_object_all(Device_type)   
    return my_render("serverinfo/device_type.html",locals(),request)

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_type_add(request):
    username=get_username(request)
    if request.method == 'GET':
            return my_render("serverinfo/device_type_add.html",locals(),request)   
    else:
        request_dict = request.POST
        data = {k: v for k, v in request_dict.items()}  
        device_info = Device_type(**data)
        device_info.save()
    return HttpResponseRedirect(reverse('device_type'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_type_edit(request):
    username=get_username(request)
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('device_type'))
    else:
        idc_id = request.GET.get('id', '')
        devicetype = get_object_by_id(Device_type,id=idc_id)
        return my_render('serverinfo/device_type_edit.html', locals(), request)

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_type_save(request):
    username=get_username(request)
    if request.method == 'POST':
        request_dict = request.POST
        data = {k: v for k, v in request_dict.items()}
        id = request.POST.get('id')
        device_info = Device_type.objects.filter(id=id).update(**data)
        return HttpResponseRedirect(reverse('device_type'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_type_del(request):
    username=get_username(request)
    if request.method == 'GET':
        id = request.GET.get('id','')
        devicemanage = get_object_by_id(Device_type,id=id)
        devicemanage.delete()    
    return HttpResponseRedirect(reverse('device_type'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_status(request):
    username=get_username(request)
    All_page_info = get_object_all(Device_status)
    DataCount,page,All_page_info = All_in_one(request,All_page_info)
    return my_render("serverinfo/device_status.html",locals(),request)

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_status1(request):
    username=get_username(request)
    statustype = get_object_all(Device_status)   
    return my_render("serverinfo/device_status.html",locals(),request)

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_status_add(request):
    username=get_username(request)
    if request.method == 'GET':
            return my_render("serverinfo/device_status_add.html",locals(),request)   
    else:
        request_dict = request.POST
        data = {k: v for k, v in request_dict.items()}
        device_info = Device_status(**data)
        device_info.save()
    return HttpResponseRedirect(reverse('device_status'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_status_edit(request):
    username=get_username(request)
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('device_status'))
    else:
        idc_id = request.GET.get('id', '')
        statustype = get_object_by_id(Device_status,id=idc_id)
        return my_render('serverinfo/device_status_edit.html', locals(), request)

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_status_save(request):
    username=get_username(request)
    if request.method == 'POST':
        request_dict = request.POST
        data = {k: v for k, v in request_dict.items()}
        id = request.POST.get('id')
        statustype = Device_status.objects.filter(id=id).update(**data)
        return HttpResponseRedirect(reverse('device_status'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_status_del(request):
    username=get_username(request)
    if request.method == 'GET':
        id = request.GET.get('id','')
        statusmanage = get_object_by_id(Device_status,id=id)
        statusmanage.delete()    
    return HttpResponseRedirect(reverse('device_status'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def buy_type(request):
    username=get_username(request)
    buymanage = get_object_all(Buy_type)   
    return my_render("serverinfo/buy_type.html",locals(),request)

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def buy_type_add(request):
    username=get_username(request)
    if request.method == 'GET':
            return my_render("serverinfo/buy_type_add.html",locals(),request)   
    else:
        request_dict = request.POST
        data = {k: v for k, v in request_dict.items()}
        #print "--------------%s" %data    
        buy_info = Buy_type(**data)
        buy_info.save()
    return HttpResponseRedirect(reverse('buy_type'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def buy_type_edit(request):
    username=get_username(request)
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('buy_type'))
    else:
        idc_id = request.GET.get('id', '')
        buymanage = get_object_by_id(Buy_type,id=idc_id)
        return my_render('serverinfo/buy_type_edit.html', locals(), request)

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def buy_type_save(request):
    username=get_username(request)
    if request.method == 'POST':
        request_dict = request.POST
        data = {k: v for k, v in request_dict.items()}
        id = request.POST.get('id')
        buymanage = Buy_type.objects.filter(id=id).update(**data)
        return HttpResponseRedirect(reverse('buy_type'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def buy_type_del(request):
    username=get_username(request)
    if request.method == 'GET':
        id = request.GET.get('id','')
        buymanage = get_object_by_id(Buy_type,id=id)
        buymanage.delete()    
    return HttpResponseRedirect(reverse('buy_type'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_manage(request):
    username=get_username(request)
    IDCinfo = get_object_all(IDC)
    Statusinfo = get_object_all(Device_status)
    All_page_info = get_object_all(Serverhost).order_by("-id")
    if  request.GET.get("export")=="true":
        All_page_info = get_object_all(Serverhost)
        s = write_excel(All_page_info)
        if s[0]:
            file_name = s[1]
            return my_render('serverinfo/device_excel_download.html', locals(), request)
        else:
            return my_render("serverinfo/device_manage.html",locals(),request)
             
    if request.method == 'GET' and request.GET.get("q")=="0":
        idc_id = request.GET.get("name","")
        status_id = request.GET.get("status","")
        #export = request.GET.get("export", False)
        if idc_id and len(status_id)==0:
            idc_id = int(idc_id)
            All_page_info = get_object(Serverhost,idc_id=idc_id)
        if status_id and len(idc_id)==0:
            status_id=int(status_id)
            All_page_info = get_object(Serverhost,status_id=status_id)
        if idc_id and status_id:
            idc_id = int(idc_id)
            status_id=int(status_id)
            kwarg = {"idc_id":idc_id,"status_id":status_id}
            All_page_info = get_object(Serverhost,**kwarg)
        DataCount,page,All_page_info = All_in_one(request,All_page_info)
            
        return my_render("serverinfo/device_manage.html",locals(),request)
    
    else:
        externalip1 = request.POST.get("externalip1","")
        if externalip1:
            page = getpage_id(request)
            All_page_info = Serverhost.objects.filter(externalip1=externalip1)
            DataCount = len(All_page_info)
            All_page_info,page=getpages(All_page_info,page)
            return my_render("serverinfo/device_manage.html",locals(),request)
    DataCount,page,All_page_info = All_in_one(request,All_page_info)
    return my_render("serverinfo/device_manage.html",locals(),request)

def device_manage1(request):
    username=get_username(request)
    IDCinfo = get_object_all(IDC)
    Statusinfo = get_object_all(Device_status)
    All_page_info = get_object_all(Serverhost).order_by("-id")
    if request.method == 'GET' and request.GET.get("q")=="0":
        idc_id = request.GET.get("name","")
        status_id = request.GET.get("status","")
        if idc_id and len(status_id)==0:
            idc_id = int(idc_id)
            All_page_info = get_object(Serverhost,idc_id=idc_id)
        if status_id and len(idc_id)==0:
            status_id=int(status_id)
            All_page_info = get_object(Serverhost,status_id=status_id)
        if idc_id and status_id:
            idc_id = int(idc_id)
            status_id=int(status_id)
            kwarg = {"idc_id":idc_id,"status_id":status_id}
            All_page_info = get_object(Serverhost,**kwarg)
        DataCount,page,All_page_info = All_in_one(request,All_page_info)       
        return my_render("serverinfo/device_manage.html",locals(),request)
    else:
        externalip1 = request.POST.get("externalip1","")
        if externalip1:
            page = getpage_id(request)
            All_page_info = Serverhost.objects.filter(externalip1=externalip1)
            DataCount = len(All_page_info)
            All_page_info,page=getpages(All_page_info,page)
            return my_render("serverinfo/device_manage.html",locals(),request)
    DataCount,page,All_page_info = All_in_one(request,All_page_info)
    return my_render("serverinfo/device_manage.html",locals(),request)


@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_manage_add(request):
    username=get_username(request)
    if request.method == 'GET':
        IDCinfo = get_object_all(IDC)
        Statusinfo = get_object_all(Device_status)
        Buyinfo = get_object_all(Buy_type)
        Deviceinfo = get_object_all(Device_type)   
        return my_render("serverinfo/device_manage_add.html",locals(),request)   
    else:
        request_dict = request.POST
        buy_type = request.POST.get('buy_type')
        host_type = request.POST.get('host_type')
        idc = request.POST.get('idc')
        status = request.POST.get('status')
        externalip1 = request.POST.get('externalip1')
        exterIP = Serverhost.objects.filter(externalip1=externalip1)
        if exterIP:
            return HttpResponse("<script language='javascript'>alert('这个外网IP已存在，请再次确认！！！');window.history.back(-1);</script>")
        data = {k: v for k, v in request_dict.items()}
        del data['buy_type'],data['host_type'],data['idc'],data['status']
        server=Serverhost(**data)
        server.save()
        Serverhost.objects.filter(externalip1=externalip1).update(buy_type=buy_type,host_type=host_type,idc=idc,status=status)
    return HttpResponseRedirect(reverse('device_manage'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_manage_edit(request):
    username=get_username(request)
    if request.method == 'POST':
        return HttpResponseRedirect(reverse('device_manage'))
    else:
        id = request.GET.get('id','')
        Serverobjects=get_object_by_id(Serverhost,id=id)
        IDCinfo = get_object_all(IDC)
        Statusinfo = get_object_all(Device_status)
        Buyinfo = get_object_all(Buy_type)
        Deviceinfo = get_object_all(Device_type)
        return my_render("serverinfo/device_manage_edit.html",locals() , request)

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_manage_save(request):
    username=get_username(request)
    if request.method == 'POST':
        request_dict = request.POST
        buy_type = request.POST.get('buy_type')
        host_type = request.POST.get('host_type')
        idc = request.POST.get('idc')
        status = request.POST.get('status')
        id = request.POST.get('id')
        data = {k: v for k, v in request_dict.items()}
        del data['buy_type'],data['host_type'],data['idc'],data['status']
        server=Serverhost(**data)
        server.save()
        Serverhost.objects.filter(id=id).update(buy_type=buy_type,host_type=host_type,idc=idc,status=status)
    return HttpResponseRedirect(reverse('device_manage'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_manage_del(request):
    username=get_username(request)
    if request.method =="GET":
        id = request.GET.get('id','')
        serverid = get_object_by_id(Serverhost,id=id)
        serverid.delete()
    return HttpResponseRedirect(reverse('device_manage'))

@login_required(login_url="/accounts/login/")
@PermissionVerify()
def device_detailed(request):
    username=get_username(request)
    if request.method == 'GET':
        uid = request.GET.get('id', '')
        Serverinfo = Serverhost.objects.filter(id=uid)
        return my_render("serverinfo/device_detailed.html",locals(),request)
    else:
        return HttpResponseRedirect(reverse('device_manage'))

