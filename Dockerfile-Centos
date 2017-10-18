FROM centos:6.6

MAINTAINER Juan Rojas <jr339@njit.edu>

RUN yum clean all && \

#Installing requirements and necessary packages
yum -y update && \
yum -y install \
httpd \
mod_rewrite \
mod_ssl \
mod_env \
php \
php-common \
php-cli \
php-mysql \
mysql-server \
php-gd && \
rm -fr /var/cache/*

#Adding sql file for DB setup
ADD initial_sql_setup.sql  /tmp/

#Adding conf file
ADD wordpress.conf /etc/httpd/conf.d/

#Adding files from wordpress folder to /var/www/html
ADD wordpress /var/www/html

#Setting up DB
RUN service mysqld start && mysql < /tmp/initial_sql_setup.sql

#Ownership and Permissions
RUN chown -R apache:apache /var/www/html/wordpress && \
chmod -R 775 /var/www/html/wordpress

#Writing to bash profile for services to start at boot
RUN echo "service httpd start" >> ~/.bashrc && echo "service mysqld start" >> ~/.bashrc

#Exposing port 80
EXPOSE 80
