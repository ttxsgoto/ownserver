# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('serverinfo', '0004_auto_20160826_1107'),
    ]

    operations = [
        migrations.AddField(
            model_name='serverhost',
            name='date_mod',
            field=models.CharField(max_length=64, null=True, verbose_name='\u4fee\u6539\u65f6\u95f4', blank=True),
        ),
    ]
