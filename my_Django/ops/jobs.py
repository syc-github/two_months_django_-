#分析日志,定时任务,发送邮件
import os
import logging
import smtplib
from my_Django import settings
from email.mime.text import MIMEText
logger=logging.getLogger('django')
log_file= 'ops\statistics.log'


def analyse_log():
    log_file_path=os.path.join(settings.BASE_DIR,log_file)
    print(log_file_path)
    if not os.path.exists(log_file_path):
        logger.info('log file not exits()....')
        # print(log_file)
        return


    # result={'path':[],'key':[],'count':[]}
    result={}
    with open(file=log_file_path,mode='r',encoding='utf8')as files:
        # print(f.read())
        for line in files:
            line=line.strip()
            # print(line)
            line_dict=eval(line)

            print(line_dict)

        #记录数据 key:value([次数,最少min,最多max,总耗时])
        # result[count]记录接口访问次数
        # result[max]记录最少时间
        # result[min]最长耗时
        # result[avg] xx=总耗时/次数
        key=line_dict['path'] #第零位标识次数
        if key in result:
            result[key][0]+=1#第零位标识次数
            if line_dict['use_time']<result[key][1]:
                result[key][1] = line_dict['use_time']
            if line_dict['use_time']<result[key][1]:
                result[key][2] = line_dict['use_time']
            result[key][3]+=line_dict['use_time']

        else:#第一次
            result[key]=['次数','最小值','最大值','耗时']
            result[key][0] = 1
            result[key][1] = line_dict['use_time']
            result[key][2] = line_dict['use_time']
            result[key][3] = line_dict['use_time']
        return result


def analyse():
    res=analyse_log()
    for key in res:
        res[key].append(res[key][3])
        res[key].append(res[key][0])

    return res


def send_email():
    msg = MIMEText(repr(analyse()), "plain", "utf-8")
    #发件仁
    msg['FROM'] = "路西法"
    msg['Subject'] = "【端口统计】"
    #收件人analyse_log()
    receivers = ['2249598769@qq.com']
    # server = smtplib.SMTP_SSL(settings.EMAIL_HOST_SSL, settings.EMAIL_PORT_SSL)
    server = smtplib.SMTP(settings.EMAIL_HOST, settings.EMAIL_PORT)
    server.set_debuglevel(1)
    server.login(settings.EMAIL_HOST_USER, settings.EMAIL_HOST_PASSWORD)
    server.sendmail(settings.EMAIL_FROM, receivers, msg.as_string())
    server.close()


if __name__ == '__main__':
    # analyse_log()
    # res=analyse()
    # print(res)
    send_email()