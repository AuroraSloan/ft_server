#!/bin/bash

# server file configuration
mv /tmp/config.inc.php /var/www/localhost/phpmyadmin
mv /tmp/wp-config.php /var/www/localhost/wordpress
mv /tmp/localhost /etc/nginx/sites-available
rm /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost

# autoindex option configuration
if [ "$AUTOINDEX" == "off" ]; then
	sed -i 's/autoindex on/autoindex off/' /etc/nginx/sites-available/localhost
	cp ../html/index.nginx-debian.html .
fi

# database configuration
service mysql start
mysql -u root < /var/www/localhost/phpmyadmin/sql/create_tables.sql
mysql -u root <<EOF
CREATE DATABASE ft_server_db;
CREATE USER 'superuser'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'pma'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'pma'@'localhost';
FLUSH PRIVILEGES;
EOF

service php7.3-fpm start
service nginx restart

bash
