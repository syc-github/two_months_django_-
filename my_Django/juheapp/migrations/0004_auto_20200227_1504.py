# Generated by Django 3.0.3 on 2020-02-27 15:04

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('juheapp', '0003_auto_20200227_1501'),
    ]

    operations = [
        migrations.RenameField(
            model_name='user',
            old_name='focus_cities',
            new_name='focus_citie',
        ),
        migrations.RenameField(
            model_name='user',
            old_name='focus_stocks',
            new_name='focus_stock',
        ),
    ]
