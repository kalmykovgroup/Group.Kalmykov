FROM ubuntu

EXPOSE 6000 80

ARG DOMAIN_EMAIL
ARG DOMAIN_URL
ENV DOMAIN_EMAIL=$DOMAIN_EMAIL
ENV DOMAIN_URL=$DOMAIN_URL

WORKDIR /certbot
COPY . /certbot
WORKDIR /certbot

#
#RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
#RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub


RUN apt-get update 
#RUN apt-get -y install certbot
RUN apt-get -y install python-certbot-nginx

CMD ["sh", "generate-certificate.sh"]
 