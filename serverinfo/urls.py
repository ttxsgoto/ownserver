from django.conf.urls import include, url ,patterns
from serverinfo.views import *

urlpatterns = patterns('',
        url(r'^idc_manage/$', idc_manage ,name='idc_manage'),
        url(r'^idc_add/$', idc_add ,name='idc_add'),
        url(r'^idc_edit/$', idc_edit ,name='idc_edit'),
        url(r'^idc_save/$', idc_save ,name='idc_save'),
        url(r'^idc_del/$', idc_del ,name='idc_del'),
        url(r'^device_type/$', device_type ,name='device_type'),
        url(r'^device_type_add/$', device_type_add ,name='device_type_add'),
        url(r'^device_type_edit/$', device_type_edit ,name='device_type_edit'),
        url(r'^device_type_save/$', device_type_save ,name='device_type_save'),
        url(r'^device_type_del/$', device_type_del ,name='device_type_del'),
        url(r'^device_status/$', device_status ,name='device_status'),
        url(r'^device_status_add/$', device_status_add ,name='device_status_add'),
        url(r'^device_status_edit/$', device_status_edit ,name='device_status_edit'),
        url(r'^device_status_save/$', device_status_save ,name='device_status_save'),
        url(r'^device_status_del/$', device_status_del ,name='device_status_del'),
        url(r'^buy_type/$', buy_type ,name='buy_type'),
        url(r'^buy_type_add/$', buy_type_add ,name='buy_type_add'),
        url(r'^buy_type_edit/$', buy_type_edit ,name='buy_type_edit'),
        url(r'^buy_type_save/$', buy_type_save ,name='buy_type_save'),
        url(r'^buy_type_del/$', buy_type_del ,name='buy_type_del'),
        url(r'^device_manage/$', device_manage ,name='device_manage'),
        url(r'^device_manage_add/$', device_manage_add ,name='device_manage_add'),
        url(r'^device_manage_edit/$', device_manage_edit ,name='device_manage_edit'),
        url(r'^device_manage_save/$', device_manage_save ,name='device_manage_save'),
        url(r'^device_manage_del/$', device_manage_del ,name='device_manage_del'),
        url(r'^device_detailed/$', device_detailed ,name='device_detailed'),
)