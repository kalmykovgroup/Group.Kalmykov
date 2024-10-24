FROM ubuntu
 

RUN apt update

RUN apt upgrade

RUN apt install snapd

RUN snap install --classic certbot

CMD ["sh", "generate-certificate.sh"]
 