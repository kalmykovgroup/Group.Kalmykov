#!/bin/bash

rm -rf /etc/letsencrypt/live/certfolder*

certbot certonly --standalone --email $DOMAIN_EMAIL -d $DOMAIN_URL --cert-name=certfolder --key-type rsa --agree-tos

cp -f /etc/letsencrypt/live/certfolder*/fullchain.pem /etc/nginx/cert.pem
cp -f /etc/letsencrypt/live/certfolder*/privkey.pem /etc/nginx/key.pem
