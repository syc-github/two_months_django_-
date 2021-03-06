"""
Django settings for my_Django project.

Generated by 'django-admin startproject' using Django 2.2.6.

For more information on this file, see
https://docs.djangoproject.com/en/2.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.2/ref/settings/
"""

import os
os.environ['DJANGO_SETTINGS_MODULE'] = 'my_Django.settings'
# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'ncwn0z2^h%7b!g^la6p3d_s18@xjp_sc3ot3u#2$seco+wmrw8'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

# ALLOWED_HOSTS = ['192.168.43.174']
ALLOWED_HOSTS = ['*']


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    'apps.app1.AppsConfig',
    'juheapp.apps.JuheappConfig',
    #只能在Linux上运行
    'django_crontab'
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    # 'django.middleware.csrf.CsrfViewMiddleware',
    'mymiddleware.mymiddleware.TestMiddle',
    'mymiddleware.mymiddleware.StatisticsMiddle',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'my_Django.urls'
UPLOAD_PIC_DIR = os.path.join(BASE_DIR,'resource','uploadpic')
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'my_Django.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.2/ref/settings/#databases

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.sqlite3',
#         'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
#     },
    # 'salve': {
    #     'ENGINE': 'django.db.backends.mysql',
    #     'NAME': 'text',
    #     'USER': 'root',
    #     'PASSWORD': '134258',
    #     'HOST': '127.0.0.1',
    #     'PORT': '3306',
    # }
# }
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'text',
        'USER': 'root',
        'PASSWORD': '134258',
        'HOST': '127.0.0.1',
        'PORT': '3306',
    }
}



# Password validation
# https://docs.djangoproject.com/en/2.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/2.2/topics/i18n/

# LANGUAGE_CODE = 'en-us'
# SESSION_COOKIE_AGE=60*20
# TIME_ZONE = 'UTC'
LANGUAGE_CODE='zh-hans'
TIME_ZONE = 'Asia/Shanghai'

# USE_TZ = False
USE_I18N = True

USE_L10N = True

USE_TZ = False


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.2/howto/static-files/

STATIC_URL = '/static/'

# STATIC_ROOT_SELF=os.path.join(BASE_DIR,'static')

# STATIC_URL = '/static/'
STATICFILES_DIRS = (
     os.path.join(BASE_DIR, 'static').replace('\\', '/'),
)
STATIC_ROOT_SELF=os.path.join(BASE_DIR, 'static')
LOGGING = {
    'version':1,
    'disable_existing_loggers': True,
    # 格式器
    'formatters': {
        'standard': {
            'format': '%(asctime)s [ %(threadName)s : %(thread)d ] '
                      '%(pathname)s : %(funcName)s : %(lineno)d %(levelname)s - %(message)s'
        },
        'myformat': {
            'format': '%(asctime)s'
                      '%(pathname)s : %(funcName)s'
        },
        'statistics': {
            'format': '%(message)s'
            }
        },
    # 过滤器
    'filters': {
        'xxx': {
            #    值:过滤器的路径
            '()': 'ops.XXXFilter'
        }
    },
    'handlers': {
        # 输出到控制台
        'console_handler': {
            'level': 'INFO',
            'class': 'logging.StreamHandler',
            'formatter': 'standard'
        },
        # 输出到文件
        'file_handler': {
            'level': 'WARNING',
            'class': 'logging.handlers.RotatingFileHandler',
            # todo 可能需要修改
            'filename': os.path.join(BASE_DIR, 'ops/log.log'),
            'maxBytes': 100 * 1024 * 1024,
            'backupCount': 10,
            'formatter': 'myformat',
            'encoding': 'utf-8'
        },
        'statistics_handler': {
            'level': 'INFO',
            'class': 'logging.handlers.RotatingFileHandler',
            # todo 可能需要修改
            'filename': os.path.join(BASE_DIR, 'ops/statistics.log'),
            'maxBytes': 100 * 1024 * 1024,
            'backupCount': 10,
            'formatter': 'statistics',
            'encoding': 'utf-8'
        },

    },
    'loggers': {
        'django': {
            'handlers': ['console_handler','file_handler'],
            # 'filters': ['xxx'],
            'level': 'DEBUG'
        },
        'statistics': {
            'handlers': ['statistics_handler'],
            'level': 'DEBUG'
        },

    }
}



CACHES = {
    'default': {
        # 1. MemCache
        # 'BACKEND': 'django.core.cache.backends.memcached.MemcachedCache',
        # 'LOCATION': '127.0.0.1:11211',

        # 2. DB Cache
        # 'BACKEND': 'django.core.cache.backends.db.DatabaseCache',
        # 'LOCATION': 'my_cache_table',

        # 3. Filesystem Cache
        # 'BACKEND': 'django.core.cache.backends.filebased.FileBasedCache',
        # 'LOCATION': '/var/tmp/django_cache',

        # 4. Local Mem Cache
        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',
        'LOCATION': 'backend-cache'
    }
}

CRONJOBS=[
    ('*/2 * * * *','cron.jobs.demo'),
    # ('*/2 * * * *','echo "xxxx"'),
    # ('*/3 * * * *','/bin/ls')
    ('*/5 * * * *','ops.jobs.send_email')
]


# Email config
# QQ邮箱 SMTP 服务器地址
EMAIL_HOST = 'smtp.qq.com'
# 端口
# EMAIL_PORT_SSL = 465
EMAIL_PORT = 25
# 发送邮件的邮箱
EMAIL_HOST_USER = '1370327514@qq.com'
# 在邮箱中设置的客户端授权密码
# EMAIL_HOST_PASSWORD = 'aklerzjfxdyqebaa'
EMAIL_HOST_PASSWORD = 'mzekgjbznbytiigd'
# 开启TLS
EMAIL_USE_TLS = True
# 收件人看到的发件人
EMAIL_FROM = '1370327514@qq.com'