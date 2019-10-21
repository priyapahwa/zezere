# Generated by Django 2.2.6 on 2019-10-21 14:44

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('zezere', '0006_auto_20191018_1325'),
    ]

    operations = [
        migrations.AlterField(
            model_name='device',
            name='mac_address',
            field=models.CharField(max_length=20, unique=True, validators=[django.core.validators.RegexValidator('^([0-9A-F]{2}[:]){5}([0-9A-F]{2})$')], verbose_name='Device MAC Address'),
        ),
    ]
