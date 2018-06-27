🎉 [sai-chan.com](https://sai-chan.com/) 🎉

.env (dev build)
```
MODE='development'
```

.env (production build)
```
MODE='production'
```

in production build, js and css is minified.

build
```
$ yarn install
$ yarn build
# watchc
$ yarn start
```

To build, production files is generated in public dir

edit profile or products, to edit `src/scripts/config/{profile.js, product.js}`

## ftp setup
```
yum install -y vsftpd
service vsftpd start
chkconfig vsftpd on
useradd koishibow
cd /etc/
git clone git@github.com:sairoutine/sai-chan.com-vsftpd.git vsftpd
