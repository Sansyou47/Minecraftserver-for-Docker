import smtplib
from email.mime.text import MIMEText
from email.utils import formatdate

sendAddress = 'san47.server@gmail.com'
password = 'tucz vfjv iqcq kylc'

subject = 'test'
bodyText = '日本語で送信可能かテストするために送信しています。'
fromAddress = 'san47.server@gmail.com'
toAddress = 'yomesaka.ikkousen@gmail.com'

# SMTPサーバに接続
smtpobj = smtplib.SMTP('smtp.gmail.com', 587)
smtpobj.starttls()
smtpobj.login(sendAddress, password)

# メール作成
msg = MIMEText(bodyText)
msg['Subject'] = subject
msg['From'] = fromAddress
msg['To'] = toAddress
msg['Date'] = formatdate()

# 作成したメールを送信
smtpobj.send_message(msg)
smtpobj.close()
