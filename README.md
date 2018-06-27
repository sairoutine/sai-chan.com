# ひまわり鎮痛剤
🎉 [sai-chan.com](https://sai-chan.com/) 🎉

## ローカルで確認

#### インストール
```bash
$ npm install
```

#### ビルド
```bash
$ npm run build
```

#### 起動
```bash
$ npm run start
```

[localhost:8080](http://localhost:8080/)

## ftp
```
yum install -y vsftpd
service vsftpd start
chkconfig vsftpd on
useradd koishibow
cd /etc/
git clone git@github.com:sairoutine/sai-chan.com-vsftpd.git vsftpd
