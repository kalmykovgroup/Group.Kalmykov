#!/bin/bash

rm -rf /etc/letsencrypt/live/certfolder*

certbot certonly --standalone --email $DOMAIN_EMAIL -d $DOMAIN_URL --cert-name=certfolder --key-type rsa --agree-tos
 
#certbot certonly --agree-tos -d $DOMAIN_URL -d *.$DOMAIN_URL --preferred-challenges dns --manual --server https://acme-v02.api.letsencrypt.org/directory

cp -f /etc/letsencrypt/live/certfolder*/fullchain.pem /usr/local/nginx/conf/cert.pem
cp -f /etc/letsencrypt/live/certfolder*/privkey.pem /usr/local/nginx/conf/key.pem
