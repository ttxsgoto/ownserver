#coding: utf-8
from django.db import models
import datetime

# Create your models here.

class IDC(models.Model):
    name = models.CharField(max_length=64, verbose_name=u'机房名称')
    address = models.CharField(max_length=128, blank=True,null=True,default='',verbose_name=u'机房地址')
    linkman = models.CharField(max_length=32, blank=True,null=True,default='',verbose_name=u'联系人')
    phone = models.CharField(max_length=32,blank=True,null=True,default='',verbose_name=u'联系电话')
    date_added = models.DateField(auto_now=True,null=True)
    comment = models.CharField(max_length=256,blank=True,null=True,default='',verbose_name=u'备注')
    def __unicode__(self):
        return self.name

    class Meta:
        verbose_name = u'IDC机房'
        verbose_name_plural = verbose_name

class Device_type(models.Model):
    type = models.CharField(max_length=50,verbose_name=u'设备类型')
    def __unicode__(self):
        return self.type

class Device_status(models.Model):
    status = models.CharField(max_length=50,verbose_name=u'设备状态')
    def __unicode__(self):
        return self.status

class Buy_type(models.Model):
    type = models.CharField(max_length=50,verbose_name=u'购买方式')
    def __unicode__(self):
        return self.type

class HostGroup(models.Model):
    name = models.CharField(max_length=100,unique=True,verbose_name=u'主机组名')
    comment = models.CharField(max_length=160, blank=True ,null = True,verbose_name=u'备注')
    def __unicode__(self):
        return self.name

class Serverhost(models.Model):
    status = models.ForeignKey(Device_status, blank=True, null=True, verbose_name=u"机器状态")
    host_type = models.ForeignKey(Device_type, blank=True, null=True, verbose_name=u"主机类型")
    buy_type = models.ForeignKey(Buy_type, blank=True, null=True, verbose_name=u"购买类型")
    idc = models.ForeignKey(IDC, blank=True, null=True, verbose_name=u'机房')
    externalip1 = models.CharField(unique=True,max_length=32, blank=True, null=True, verbose_name=u"外网IP1")
    internalip1 = models.CharField(max_length=32, blank=True, null=True, verbose_name=u"内网IP1")
    externalip2 = models.CharField(max_length=32, blank=True, null=True, verbose_name=u'外网IP2')
    internalip2 = models.CharField(max_length=32, blank=True, null=True, verbose_name=u"内网IP2")
    hostname = models.CharField(max_length=128,blank=True, null=True , verbose_name=u"主机名")
    #group = models.ManyToManyField(HostGroup, blank=True, verbose_name=u"所属主机组")
    mac = models.CharField(max_length=20, blank=True, null=True, verbose_name=u"MAC地址")
    brand = models.CharField(max_length=64, blank=True, null=True, verbose_name=u'硬件厂商型号')
    cpu = models.CharField(max_length=64, blank=True, null=True, verbose_name=u'CPU')
    cpu_hz = models.CharField(max_length=64, blank=True, null=True, verbose_name=u'CPU频率')
    memory = models.CharField(max_length=128, blank=True, null=True, verbose_name=u'内存')
    disk = models.CharField(max_length=1024, blank=True, null=True, verbose_name=u'硬盘大小')
    disk_type = models.CharField(max_length=1024, blank=True, null=True, verbose_name=u'硬盘类型')
    disk_num = models.CharField(max_length=20, blank=True, null=True, verbose_name=u'硬盘个数')
    system_type = models.CharField(max_length=32, blank=True, null=True, verbose_name=u"系统类型")
    system_version = models.CharField(max_length=16, blank=True, null=True, verbose_name=u"系统版本号")
    cabinet = models.CharField(max_length=32, blank=True, null=True, verbose_name=u'机柜号')
    position = models.CharField(max_length=20,blank=True, null=True, verbose_name=u'机器位置')
    number = models.CharField(max_length=32, blank=True, null=True, verbose_name=u'资产编号')
    sn = models.CharField(max_length=128, blank=True, null=True, verbose_name=u"SN编号")
    date_added = models.CharField(max_length=64,blank=True, null=True,verbose_name=u"创建时间")
    date_mod = models.CharField(max_length=64,blank=True, null=True,verbose_name=u"修改时间")
    comment = models.CharField(max_length=256, blank=True, null=True, verbose_name=u"备注")
    def __unicode__(self):
        return self.externalip1

