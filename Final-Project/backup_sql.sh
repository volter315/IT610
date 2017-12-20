#!/bin/bash
# Backup Directory Location 
parent_location="/var/backups/mysql"

# If any file in /var/backups/mysql is older than 7 days - DELETE

sudo find /var/backups/mysql -mtime +7 -exec sudo rm -f {} \;

# MySQL settings
user="root"
password="verysecurepassword"

# Creating directory by date format Y_M_D
date=`date +%Y_%m_%d`

#Creating directory parent/date_format 
dir="${parent_location}/${date}"

#Directory creation with date and permissions setting
sudo mkdir -p "${dir}"
sudo chmod 775 "${dir}"

#Dumping MySQL --all-databases with given arguments
sudo mysqldump  --user=${user} --password=${password} --all-databases > "${dir}/backup.sql"
  sudo chmod 775 "${dir}"


 
