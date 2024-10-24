FROM ubuntu

EXPOSE 80

WORKDIR /certbot
COPY . /certbot
WORKDIR /certbot

RUN apt-get update 
RUN apt-get -y install certbot 

CMD ["sh", "generate-certificate.sh"]
 