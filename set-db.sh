#membuat database
echo "nama user"
read user
echo "nama database"
read db_name
echo "password"
read pswd

mysql -u root << EOF
CREATE DATABASE ${db_name};
GRANT ALL ON ${db_name}.* TO '${user}'@'localhost' IDENTIFIED BY '${pswd}' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

#konfigurasi web-server
echo "Nama domain kamu"
read domain
tee /etc/nginx/sites-available/${domain}.conf << EOF > /dev/null
server {
    listen 80;
    server_name www.${domain} ${domain};

    root /var/www/html/wordpress;
    index index.php index.html index.htm;

    location / {
        try_files \$uri \$uri/ /index.php\$is_args\$args;
    }

    location ~ \.php$ {
        try_files \$uri =404;
        fastcgi_pass unix:/run/php/php8.3-fpm.sock;
        fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
        include fastcgi_params;
    }

    location ~* \.(js|css|jpg|jpeg|png|gif|ico)$ {
        expires max;
        log_not_found off;
    }

    location ~ /\.ht {
        deny all;
    }
}
EOF

#membuat symlink untul direktory lain
ln -s /etc/nginx/sites-available/${domain}.conf /etc/nginx/sites-enabled/

#reload nginx
systemctl reload nginx.service
