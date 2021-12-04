# 🎉 [sai-chan.com](https://sai-chan.com/) 🎉

## How to build

*1 edit `.env` file*

dev build
```
MODE='development'
```

production build
```
MODE='production'
```
On production building, js and css is minified.

*2. edit*

Build ends, production files(js and css) are generated in `./stylesheet` and `./scripts` dir.
To change profile or products, to edit `src/scripts/config/{profile.js, product.js}`.

*3. build*

```
# only first
yarn install

yarn build
```

# Get Started

Watch `./src` and start web server.
```
$ yarn start
```

# Infrastructure

## ftp setup
```
sudo yum install -y vsftpd
sudo service vsftpd start
sudo chkconfig vsftpd on
sudo useradd koishibow
sudo rm -rf /etc/vsftpd/
sudo mkdir /etc/vsftpd/
sudo chown sairoutine:sairoutine /etc/vsftpd/
git clone git@github.com:sairoutine/sai-chan.com-vsftpd.git /etc/vsftpd
