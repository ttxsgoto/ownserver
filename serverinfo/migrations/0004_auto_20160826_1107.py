# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('serverinfo', '0003_auto_20160826_1105'),
    ]

    operations = [
        migrations.AlterField(
            model_name='serverhost',
            name='externalip1',
            field=models.CharField(max_length=32, unique=True, null=True, verbose_name='\u5916\u7f51IP1', blank=True),
        ),
    ]
