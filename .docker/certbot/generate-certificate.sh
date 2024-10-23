#!/bin/bash

rm -rf /etc/letsencrypt/live/certfolder*

certbot certonly --standalone --email $DOMAIN_EMAIL -d $DOMAIN_URL --cert-name=certfolder --key-type rsa --agree-tos

#certbot certonly --webroot --agree-tos --email $DOMAIN_EMAIL --webroot-path /usr/share/nginx/html/ -d $DOMAIN_URL -d www.$DOMAIN_URL
 
#certbot certonly --agree-tos -d $DOMAIN_URL -d *.$DOMAIN_URL --preferred-challenges dns --manual --server https://acme-v02.api.letsencrypt.org/directory

cp -f /etc/letsencrypt/live/certfolder*/fullchain.pem /usr/share/nginx/html/cert.pem
cp -f /etc/letsencrypt/live/certfolder*/privkey.pem /usr/share/nginx/html/key.pem
