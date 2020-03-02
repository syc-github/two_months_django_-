# Django总结

### Django 是什么 ?

###### Django是一个开源的python Web框架，.

###### Django是一个开放源代码的Web应用框架，由Python写成。采用了MVT的软件设计模式，即模型Model，视图View和模板Template,用于快速开发，实用，可维护，简洁的设计，并保护网站.



### 如何创建一个Django项目?

```
Django-admin startproject prjoectname
```

### Django常用命令?

```
Django-admin startproject prjoectname   创建项目
Python manage.py runserver  运行项目
Django-admin startapp apps  创建app
python manage.py makemigrations  迁移数据库模型创建一个文件
python manage.py migrate  运行迁移文件,把迁移文件的内容同步到数据库
python manage.py shell 进入Django shell
创建管理员用户 python manage.py createsuperuser

#创建数据库内容,命令行创建
python manage.py shell
from apps.models import Article
a = Article()
a.article_id =1
a.title = 'aaa'
a.brief_content = 'bbbbbbb'
a.content = 'llskdjfslfkjksj'
a.save()
a

```

### 项目结构

├── djangolicious
│   ├── apps
│   │   ├── blog
│   │   │   ├── __init__.py
│   │   │   ├── models.py
│   │   │   ├── tests.py
│   │   │   └── views.py
│   │   ├── __init__.py
│   │   ├── news
│   │   │   ├── __init__.py
│   │   │   ├── models.py
│   │   │   ├── tests.py
│   │   │   └── views.py
│   │   └── reader
│   │       ├── __init__.py
│   │       ├── models.py
│   │       ├── tests.py
│   │       └── views.py
│   ├── __init__.py
│   ├── libs
│   │   ├── display
│   │   │   ├── __init__.py
│   │   │   ├── models.py
│   │   │   ├── tests.py
│   │   │   └── views.py
│   │   ├── __init__.py
│   │   └── management
│   │       ├── __init__.py
│   │       ├── models.py
│   │       ├── tests.py
│   │       └── views.py
│   ├── settings
│   │   ├── common.py
│   │   ├── dev.py
│   │   ├── __init__.py
│   │   ├── prod.py
│   │   └── test.py
│   ├── urls.py
│   └── wsgi.py
├── manage.py
├── requirements
│   ├── common.txt
│   ├── dev.txtd
│   ├── prod.txt
│   └── test.txt
└── requirements.txt

------

# 应用开发

### 1.命令行创建Django项目

### 2创建应用app

### 3.将app添加到INSTALLED_APPS列表中(settings.py)文件

### 4.设置中文,和时区,静态文件指向(settings.py)文件,并在project根目录下创建static目录

### 5.创建模板templates,并设置模版指向(settings.py)文件

(1)工程中创建,即在project根目录下创建创建templates目录,修改TEMPLATES列表中的DIRSS

(2)应用中创建,即在app目录下创建templates目录,修改TEMPLATES列表中的DIRS

### 6.配置运行环境

### 7.拷贝urls.py到app中

###### (1)修改原urls.py

###### (2)修改app下的urls.py

### 8.在templates中新建一个index.html文件

### 9.测试

### 10.Django配置mysql

### 11.pycharm创建Django admin用户和密码

### 12.数据迁移,在创建管理员用户时,出现错误:1048,'column' last_login '不能为NULL'

### 13.进入Django工程后台管理界面,打开数据表时,出现错误:1054 -Unknown column '表名.id' in 'field list'

------

# 路由配置

### 转换器

(1)path装换器

(2)re_path转换器(老版的URL)

(3)有名分组

(4)路由分发

(5)反向解析

(6)名称空间

------

# 视图层

### 1.视图函数

### 2.HttpRequest对象

###### (1)HTTPResponse()

###### (2)render()

###### (3)redirect()

###### HttpResponse()括号内直接跟一个具体的字符串作为响应体，比较直接很简单，所以这里主要介绍后面两种形式。

### 3.1request属性

------



# 模型层:

##### 模型层位于视图层和数据库之间

### 作用:

###### 屏蔽不同的数据库之间的差异,使开发者更加专注于逻辑的开发,提供了很多便捷的工具,有助于开发.

模型层定义字段:

数字类型:IntegerField

文本类型:TextField

日期类型:DateTimeField

自增:AutoField

主键:primary_key属性

定义一个模型需要到应用中的models.py的文件中创建一个类,并且继承models.Model

模型迁移:python manage.py makemigrations

运行迁移文件,把迁移文件的内容同步到数据库:python manage.py migrate

应用中注册模型需要到admin.py中:admin.site.register(模型名)  

------

# 模板系统

### 1.模板的由来

```python
def current_datetime(request):
    now = datetime.datetime.now()
    html = "<html><body>It is now %s.</body></html>" % now
    return HttpResponse(html)
```

### 2.模板语法变量

```html
{{var_name}}
```

### 3.模板之过滤器

```html
{{obj|filter__name:param}}
```

### 4.模板之标签

```html
{% for key,val in dic.items %}
    <p>{{ key }}:{{ val }}</p>
{% endfor %}
```

### 5.模板继承

```
{% block content %}
...
{% endblock content %}
```



# Django shell

用于交互式的python编程

继承Django项目环境

好处:临时操作更加方便开发,Debug



# Django Admin

1. Django 的后台管理工具,自动生成的
2. 读取定义的模型元数据,提供强大的管理使用页面

#### 作用:更加便捷的增删改查网站的内容

### 使用:

### 创建管理员用户 python manage.py createsuperuser

### 登陆页面进行管理



------

# Request 和 Response 对象

### http请求 与 Django Request对象的对应

- 请求方法  ----Request对象 的method属性
- 请求参数       ---Request对象的GET,POST等等(QueryDict当成dict来用)
- 请求端信息 ---  Request对象的META属性
- header
- cookie   ---  Request对象 的COOKIES属性

### 

------

### HTTP应答与Response对象的对应

- 状态码             status
- 应答内容          content
- 内容格式         

Response子类:JsonResponse,FileResponse等

------

### restfull是什么

- Representational State Transfer (直译为: 表述性状态转移 ,没人能听明白,所以大家也不反应,直接叫restful)
- 本质
  - 一种软件架构风格
- 核心
  - 面向资源
- 解决的问题
  - 降低开发的复杂性
  - 提高系统的可伸缩性

------

### restfulapi介绍

- API接口的RESTful设计

  - 说明接口类型
    - /view
    - /template
    - /api
  - 说明接口版本
    - /view/v1
    - /template/v1.1
    - /api/v2.0.1

- 增删改查的RESTful设计

  - http请求中的get,post,put,delete方法

    - GET:从服务器获取资源
    - POST:在服务器新建一个资源
    - put:在服务器更新资源
    - delete:从服务器删除资源
    - 举个例子:  GET : 一个用户信息  /api/v1/user
      - 但是无法获取具体哪一个?需要过滤
    - url中的过滤信息(分页,指定)
      - 两种设计
      - GET:/api/v1.0/user/1 (后边的1不明确,需要内定)
      - GET:/api/v1.0/user?page=1
      - 还可以指定: GET:/api/v1.0/user?name=lisi

    

- 资源路径的RESTful设计

  - 说明资源类型
    - GET:/api/v1.0/resource/image?md5=<md5>
    - GET:/api/v1.0/resource/doc?md5=<md5>
    - GET:/资源a/版本/资源b/资源b的一种类型?资源b的过滤条件

------

### 聚合api的使用步骤

1. 注册账号 https://www.juhe.cn/ 
2. 申请api
3. 记住appkey
4. 测试(可以用网站自带的工具,也可以用postman)