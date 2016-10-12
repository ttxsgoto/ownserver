# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Buy_type',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('type', models.CharField(max_length=50, verbose_name='\u8d2d\u4e70\u65b9\u5f0f')),
            ],
        ),
        migrations.CreateModel(
            name='Device_status',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('status', models.CharField(max_length=50, verbose_name='\u8bbe\u5907\u72b6\u6001')),
            ],
        ),
        migrations.CreateModel(
            name='Device_type',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('type', models.CharField(max_length=50, verbose_name='\u8bbe\u5907\u7c7b\u578b')),
            ],
        ),
        migrations.CreateModel(
            name='HostGroup',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=100, verbose_name='\u4e3b\u673a\u7ec4\u540d')),
                ('comment', models.CharField(max_length=160, null=True, verbose_name='\u5907\u6ce8', blank=True)),
            ],
        ),
        migrations.CreateModel(
            name='IDC',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=64, verbose_name='\u673a\u623f\u540d\u79f0')),
                ('address', models.CharField(default=b'', max_length=128, null=True, verbose_name='\u673a\u623f\u5730\u5740', blank=True)),
                ('linkman', models.CharField(default=b'', max_length=32, null=True, verbose_name='\u8054\u7cfb\u4eba', blank=True)),
                ('phone', models.CharField(default=b'', max_length=32, null=True, verbose_name='\u8054\u7cfb\u7535\u8bdd', blank=True)),
                ('date_added', models.DateField(auto_now=True, null=True)),
                ('comment', models.CharField(default=b'', max_length=256, null=True, verbose_name='\u5907\u6ce8', blank=True)),
            ],
            options={
                'verbose_name': 'IDC\u673a\u623f',
                'verbose_name_plural': 'IDC\u673a\u623f',
            },
        ),
        migrations.CreateModel(
            name='Serverhost',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('externalip1', models.CharField(max_length=32, null=True, verbose_name='\u5916\u7f51IP1', blank=True)),
                ('internalip1', models.CharField(max_length=32, null=True, verbose_name='\u5185\u7f51IP1', blank=True)),
                ('externalip2', models.CharField(max_length=32, null=True, verbose_name='\u5916\u7f51IP2', blank=True)),
                ('internalip2', models.CharField(max_length=32, null=True, verbose_name='\u5185\u7f51IP2', blank=True)),
                ('hostname', models.CharField(unique=True, max_length=128, verbose_name='\u4e3b\u673a\u540d')),
                ('mac', models.CharField(max_length=20, null=True, verbose_name='MAC\u5730\u5740', blank=True)),
                ('brand', models.CharField(max_length=64, null=True, verbose_name='\u786c\u4ef6\u5382\u5546\u578b\u53f7', blank=True)),
                ('cpu', models.CharField(max_length=64, null=True, verbose_name='CPU', blank=True)),
                ('cpu_hz', models.CharField(max_length=64, null=True, verbose_name='CPU\u9891\u7387', blank=True)),
                ('memory', models.CharField(max_length=128, null=True, verbose_name='\u5185\u5b58', blank=True)),
                ('disk', models.CharField(max_length=1024, null=True, verbose_name='\u786c\u76d8\u5927\u5c0f', blank=True)),
                ('disk_type', models.CharField(max_length=1024, null=True, verbose_name='\u786c\u76d8\u7c7b\u578b', blank=True)),
                ('disk_num', models.CharField(max_length=20, null=True, verbose_name='\u786c\u76d8\u4e2a\u6570', blank=True)),
                ('system_type', models.CharField(max_length=32, null=True, verbose_name='\u7cfb\u7edf\u7c7b\u578b', blank=True)),
                ('system_version', models.CharField(max_length=16, null=True, verbose_name='\u7cfb\u7edf\u7248\u672c\u53f7', blank=True)),
                ('cabinet', models.CharField(max_length=32, null=True, verbose_name='\u673a\u67dc\u53f7', blank=True)),
                ('position', models.IntegerField(null=True, verbose_name='\u673a\u5668\u4f4d\u7f6e', blank=True)),
                ('number', models.CharField(max_length=32, null=True, verbose_name='\u8d44\u4ea7\u7f16\u53f7', blank=True)),
                ('sn', models.CharField(max_length=128, null=True, verbose_name='SN\u7f16\u53f7', blank=True)),
                ('date_added', models.DateTimeField(auto_now=True, null=True)),
                ('comment', models.CharField(max_length=256, null=True, verbose_name='\u5907\u6ce8', blank=True)),
                ('buy_type', models.ForeignKey(verbose_name='\u8d2d\u4e70\u7c7b\u578b', blank=True, to='serverinfo.Buy_type', null=True)),
                ('host_type', models.ForeignKey(verbose_name='\u4e3b\u673a\u7c7b\u578b', blank=True, to='serverinfo.Device_type', null=True)),
                ('idc', models.ForeignKey(verbose_name='\u673a\u623f', blank=True, to='serverinfo.IDC', null=True)),
                ('status', models.ForeignKey(verbose_name='\u673a\u5668\u72b6\u6001', blank=True, to='serverinfo.Device_status', null=True)),
            ],
        ),
    ]
