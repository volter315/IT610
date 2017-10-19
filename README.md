# IT610
Project 1

**Common Deliverables: 

**Install Nagios and monitor:

1) Traffic
2) CPU
3) Disk
4) HTTP

Using nrpe plugin to monitor remote host (Docker host). Nagios running on different server connects through port 5666 to remote host.

Project Consists of creating a Wordpress site using Docker, Apache and MySQL 

Requirements to run this:
1) Docker 
2) Wordpress files to be configured or already configured wp-config.php (either wp cli or wget to download it). Follow Dockerfile structure of wordpress/wordpress /var/www/html otherwise it won't detect wordpress as a directory. 
3) initial_sql_setup.sql
4) wordpress.conf

Run within directory where Dockerfile resides.
docker build -t wordpress:it610 .   

Run to start the site 
docker run -itd --name wordpress-it610 -h wordpress -p 80:80 wordpress:it610  /bin/bash

Live site: http://35.202.133.22/
