from django.shortcuts import render
from django.views.decorators.cache import cache_page
from django.core.cache import cache
import os
import django
import time
os.environ['DJANGO_SETTINGS_MODULE']='my_Django.settings'
django.setup()


def get2():
    time.sleep(5)
    res=cache.get('你好可乐')
    print(res,'res////////')


if __name__ == '__main__':
    cache.set('可乐','百事可乐',5)
    print('begin.........')
    print(cache.get('可乐'))
    get2()