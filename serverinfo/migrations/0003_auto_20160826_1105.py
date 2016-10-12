# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('serverinfo', '0002_auto_20160826_1103'),
    ]

    operations = [
        migrations.AlterField(
            model_name='serverhost',
            name='hostname',
            field=models.CharField(max_length=128, null=True, verbose_name='\u4e3b\u673a\u540d', blank=True),
        ),
    ]
