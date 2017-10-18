SET PASSWORD FOR 'root'@'localhost' = PASSWORD('very-secure');

CREATE DATABASE it610;

GRANT ALL PRIVILEGES ON it610.* TO 'jr339'@'localhost' IDENTIFIED BY 'very-secure';

DROP DATABASE test;
