import os
import django
import smtplib
from my_Django import settings
from email.mime.text import MIMEText

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'my_Django.settings')
django.setup()


def send_mail():
    msg = MIMEText("小姐姐我喜欢你好久了,做我女朋友吧", "plain", "utf-8")
    #发件仁
    msg['FROM'] = "Mail Test"
    msg['Subject'] = "【Mail Test】"
    #收件人
    receivers = ['2249598769@qq.com']
    # server = smtplib.SMTP_SSL(settings.EMAIL_HOST_SSL, settings.EMAIL_PORT_SSL)
    server = smtplib.SMTP(settings.EMAIL_HOST, settings.EMAIL_PORT)
    # server = smtplib.SMTP_SSL(settings.EMAIL_HOST_SSL, settings.EMAIL_PORT_SSL)
    server = smtplib.SMTP(settings.EMAIL_HOST, settings.EMAIL_PORT)
    server.set_debuglevel(1)
    server.login(settings.EMAIL_HOST_USER, settings.EMAIL_HOST_PASSWORD)
    server.sendmail(settings.EMAIL_FROM, receivers, msg.as_string())
    server.close()
    pass


if __name__ == '__main__':
    send_mail()