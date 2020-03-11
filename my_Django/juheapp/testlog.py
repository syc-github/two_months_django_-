import django
import os
import logging
os.environ['DJANGO_SETTINGS_MODULE']='my_Django.settings'
django.setup()


def logtest():

    logger=logging.getLogger('django')

    logger.info('我是 info log 信息')
    logger.info('我是 inof log syc')

    logger.warning('我是 warning log 信息')
    logger.warning('我是 warning log syc')

    logger.error('我是 error log 信息')
    logger.error('我是 error log syc')


if __name__ == '__main__':
    logtest()