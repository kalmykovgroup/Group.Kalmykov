#!/bin/bash

if [ ! -f ${SSL_FILE_CHAIN} ] || [ ! -f ${SSL_FILE_KEY} ]; then

	echo "ssl files does exist. Получение сертификатов..."

	if [ -f ${SSL_FILE_CHAIN} ]; then
		rm ${SSL_FILE_CHAIN}
	fi

	if [ -f ${SSL_FILE_KEY} ]; then
		rm ${SSL_FILE_KEY}
	fi

    certbot certonly --standalone --email $DOMAIN_EMAIL -d $DOMAIN_URL --cert-name=certfolder --key-type rsa --agree-tos --config-dir $SSL_DIR


  if [ ! -f ${SSL_FILE_CHAIN} ] || [ ! -f ${SSL_FILE_KEY} ]; then

	  echo "Файлы не найдены, сертификаты не установленны!"

   else
	 echo "Сертификаты успешно установленны!"
  fi

else

	echo "Сертификаты обнаруженны!"
fi