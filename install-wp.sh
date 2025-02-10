#!/bin/bash

#download wordpress
wget https://wordpress.org/latest.tar.gz

#ekstrak file .tar.gz
tar xf latest.tar.gz

#memindahkan folder
mv wordpress/ /var/www/html/

#copy config.php
cp -R /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

#mengubah pada file config.php
sed -i "s/database_name_here/${db_name}/g" /var/www/html/wordpress/wp-config.php
sed -i "s/username_here/${user}/g" /var/www/html/wordpress/wp-config.php
sed -i "s/password_here/${pswd}/g" /var/www/html/wordpress/wp-config.php

#menambahkan owner
chown -R www-data:www-data /var/www/html/wordpress/
