from juheapp.models import User
from my_Django import settings
import os
# import django
# os.environ['DJANGO_SETTINGS_MODULE']='my_Django.settings'
# django.setup()
# u=User.objects.create(openid='kkkk',nickname='哈哈哈',focus_cities='山西',focus_constellations='摩羯座',focus_stocks='理理财')
# u.save()
# u
# print(u)
# from juheapp.models import User
#
#
# def lazy_load():
#     for user in User.objects.all():
#         print(user.menu.all())
#
#
# def pre_load():
#     for user in User.objects.prefetch_related('menu'):
#         print(user.menu.all())