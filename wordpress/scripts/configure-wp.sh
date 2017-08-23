#! /bin/bash

printf "Installing WP.\n"
wp core install --path=/var/www/html --url=http://localhost --title="RDU Scale Lab" --admin_user=admin --admin_password=admin --admin_email=grafuls@redhat.com
printf "Installing JP plugin.\n"
wp plugin install jetpack-markdown --activate --path=/var/www/html
printf "Installing Krusze theme.\n"
wp theme install krusze --activate --path=/var/www/html

