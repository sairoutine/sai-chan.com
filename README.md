# setup

## ftp
```
yum install -y vsftpd
service vsftpd start
chkconfig vsftpd on
useradd koishibow
cd /etc/
git clone git@github.com:sairoutine/sai-chan.com-vsftpd.git vsftpd
