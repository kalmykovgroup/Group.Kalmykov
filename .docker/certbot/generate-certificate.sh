#!/bin/bash

if [ ! -f "${SSL_DIR}${SSL_FILENAME_CHAIN}" ] || [ ! -f "${SSL_DIR}${SSL_FILENAME_KEY}" ]; then

	echo "ssl files does exist. Получение сертификатов..."

	if [ -f "${SSL_DIR}${SSL_FILENAME_CHAIN}" ]
		rm "${SSL_DIR}${SSL_FILENAME_CHAIN}"
	fi

	if [ -f "${SSL_DIR}${SSL_FILENAME_KEY}" ]
		rm "${SSL_DIR}${SSL_FILENAME_KEY}"
	fi

    certbot certonly --standalone --email $DOMAIN_EMAIL -d $DOMAIN_URL --cert-name=certfolder --key-type rsa --agree-tos --config-dir $SSL_DIR


  if [ ! -f "${SSL_DIR}${SSL_FILENAME_CHAIN}" ] || [ ! -f "${SSL_DIR}${SSL_FILENAME_KEY}" ]; then

	  echo "Файлы не найдены, сертификаты не установленны!"

	  else
		 echo "Сертификаты успешно установленны!"
	fi

else

	echo "Сертификаты обнаруженны!"
fi