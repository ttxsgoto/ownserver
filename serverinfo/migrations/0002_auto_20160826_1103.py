# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('serverinfo', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='serverhost',
            name='date_added',
            field=models.CharField(max_length=64, null=True, verbose_name='\u521b\u5efa\u65f6\u95f4', blank=True),
        ),
        migrations.AlterField(
            model_name='serverhost',
            name='position',
            field=models.CharField(max_length=20, null=True, verbose_name='\u673a\u5668\u4f4d\u7f6e', blank=True),
        ),
    ]
