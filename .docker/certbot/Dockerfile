FROM ubuntu

RUN apt-get update 

RUN apt install snapd

RUN snap install --classic certbot

CMD ["sh", "generate-certificate.sh"]
 