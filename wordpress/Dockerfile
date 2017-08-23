FROM centos:centos7
MAINTAINER RDU Scale Lab <grafuls@redhat.com>


ENV DB_NAME=mydb DB_ENV_MYSQL_USER=myuser DB_ENV_MYSQL_PASSWORD=password DB_PORT_3306_TCP_ADDR=172.17.0.2

RUN yum -y update &&\
    yum clean all

RUN yum -y install sendmail httpd php php-mysql php-gd openssl psmisc tar less &&\
    yum clean all

ADD scripts /scripts
RUN curl -LO http://wordpress.org/latest.tar.gz                         &&\
    tar xvzf /latest.tar.gz -C /var/www/html --strip-components=1       &&\
    rm /latest.tar.gz                                                   &&\
    chown -R apache:apache /var/www/                                    &&\
    chmod 755 /scripts/*
RUN sed -i '96iServerName 127.0.0.1:80' /etc/httpd/conf/httpd.conf
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&\
	chmod +x wp-cli.phar                                                &&\
	mv wp-cli.phar /usr/local/bin/wp

COPY wp-config.php /var/www/html/
COPY wordpress.conf /etc/php-fpm.d/

EXPOSE 80

RUN ["/usr/bin/bash", "/scripts/start.sh"]

ENTRYPOINT /usr/sbin/httpd -D FOREGROUND && /usr/bin/bash /scripts/configure-wp.sh
