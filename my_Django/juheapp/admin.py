from django.contrib import admin
from juheapp.models import User,People
import random
import time
# Register your models here.

admin.site.register(People)


@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    exclude = ['openid'] #不显示那个属性,字段

    def save_model(self, request, obj, form, change):
        print('aaaa',obj)
        print(request.method)
        obj.openid=obj.nickname+str(random.randint(1,100))
        return super(UserAdmin, self).save_model(request, obj, form, change)