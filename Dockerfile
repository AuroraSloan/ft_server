FROM debian:buster

ENV AUTOINDEX on

WORKDIR /var/www/localhost

ENV SSL_PATH=/etc/nginx/ssl \
        WP_URL=https://wordpress.org/latest.tar.gz \
        WP_TAR=latest.tar.gz \
        PHPMA_URL=https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz \
        PHPMA_TAR=phpMyAdmin-latest-all-languages.tar.gz

RUN set -eux; \
        apt-get update && apt-get install -y \
        default-mysql-server \
        nginx \
        php7.3-fpm php7.3-mysql php7.3-xml php7.3-mbstring \
        wget; \
        rm -rf /var/lib/apt/lists/*; \
        chown -R www-data:www-data ./; \
        mkdir ./phpmyadmin ./phpmyadmin/tmp /etc/nginx/ssl /var/log/nginx/localhost; \
        chmod 777 ./phpmyadmin/tmp; \
        wget $PHPMA_URL -P /tmp; \
        wget $WP_URL -P /tmp; \
        tar -xzvf /tmp/$WP_TAR; \
        tar -xzvf /tmp/$PHPMA_TAR -C ./phpmyadmin --strip-components 1; \    
        rm /tmp/$PHPMA_TAR /tmp/$WP_TAR; \
        openssl req -newkey rsa:2048 -x509 -nodes -days 365 \
                -keyout $SSL_PATH/localhost.key -out $SSL_PATH/localhost.crt \
                -subj "/C=JP/ST=Tokyo/L=Tokyo/O=42 Tokyo/CN=localhost"

COPY srcs/* /tmp/

EXPOSE 80 443 

ENTRYPOINT ["bash", "/tmp/run.sh"]
