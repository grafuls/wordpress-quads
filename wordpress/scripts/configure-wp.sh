#! /bin/bash

wp core install --path=/var/www/html --url=http://localhost --title=Quads --admin_user=admin --admin_password=admin --admin_email=grafuls@redhat.com
wp theme install krusze --activate --path=/var/www/html
