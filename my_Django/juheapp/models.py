from django.db import models

# Create your models here.


class People(models.Model):
    name=models.CharField(max_length=8)

    age=models.IntegerField(default='男')

    tel=models.CharField(max_length=12)

    pub_time=models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class User(models.Model):
    # 用户id
    openid=models.CharField(max_length=32,unique=True)
    #昵称
    nickname=models.CharField(max_length=32,unique=True)
    #关注的城市
    focus_cities=models.TextField(default='[]')
    #关注的星座
    focus_constellations=models.TextField(default='[]')
    #关注的股票
    focus_stocks = models.TextField(default='[]')

    # menu=models.ManyToManyField(App
    #任意添加一个字段
    key_name=models.CharField(max_length=8,default='abc')
    # one_name=models.CharField(max_length=10,default='锁定')

    def __str__(self):
        return self.nickname

    class Meta:
        """
        元:描绘本身
        """
        pass
        db_table='juheapp_user'
        indexes=[
            # models.Index(fields=['nickname'],name='nickname')#也是一个数组
            # models.Index(fields=['first_name'],name='first_name_idx')
        ]





