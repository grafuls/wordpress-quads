FROM centos/mariadb

EXPOSE 3306

USER root
# TODO: check if base image has this already installed
RUN ["yum", "install", "-y", "libselinux-python", "libsemanage-python"]

# TODO: seboolean: name=mysql_connect_any state=true persistent=yes

COPY my.cnf /etc/
