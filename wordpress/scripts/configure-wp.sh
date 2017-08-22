#! /bin/bash

wp core install --path=/var/www/html --url=localhost:80 --title=Quads --admin_user=admin --admin_password=admin --admin_email=admin@1ee12e.com
wp theme install krusze --activate --path=/var/www/html
