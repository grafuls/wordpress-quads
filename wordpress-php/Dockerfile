FROM wordpress

COPY wp-config.php /srv/wordpress/

COPY epel.repo /etc/yum.repos.d/
COPY RPM-GPG-KEY-EPEL-7 /etc/pki/rpm-gpg/

RUN [
	"apt-get", "-y", "install", 
	"php",
	"php-fpm",
    "php-enchant",
    "php-IDNA_Convert",
    "php-mbstring",
    "php-mysql",
    "php-PHPMailer",
    "php-process",
    "php-simplepie",
    "php-xml"
]

# Disable default pool
RUN ["mv", "/etc/php-fpm.d/www.conf", "/etc/php-fpm.d/www.disabled"]

# Copy php-fpm configuration
COPY wordpress.conf /etc/php-fpm.d/

RUN ["service", "restart", "php-fpm"]
