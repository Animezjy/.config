import smtplib
from email.mime.text import MIMEText


# 发送邮件
def email():
    sender = '879423371@qq.com'
    pwd = 'evehthqczdifbeje'
    receivers = ['879423371@qq.com']
    messages = MIMEText('请及时处理报警')
    messages['From'] = 'zjy <879423371@qq.com>'
    messages['To'] = 'zjy <879423371@qq.com>'
    subject = '有新的报警等待处理'
    # 邮件主题
    messages['Subject'] = subject
       # 使用非本地服务器，需要建立ssl连接
    try:
        smtpobj = smtplib.SMTP_SSL('smtp.qq.com',465)
        smtpobj.login(sender,pwd)
        smtpobj.sendmail(sender,receivers,messages.as_string())
        print('邮件发送成功')
    except Exception as e:
        print('error')
email()
