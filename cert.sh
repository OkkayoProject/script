#!/bin/bash
domain=$(cat /etc/okkayoproject/domain)
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
cd /root/
wget -O acme.sh https://raw.githubusercontent.com/acmesh-official/acme.sh/master/acme.sh
bash acme.sh --install
rm acme.sh
cd .acme.sh
echo "starting...., Port 80 Akan di Hentikan Saat Proses install Cert"
bash acme.sh --register-account -m abidneo5@gmail.com
bash acme.sh --issue --standalone -d $domain --force
bash acme.sh --installcert -d $domain --fullchainpath /etc/v2ray/v2ray.crt --keypath /etc/v2ray/v2ray.key
restart