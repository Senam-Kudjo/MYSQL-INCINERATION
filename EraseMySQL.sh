#!/bin/bash

echo "+-------------------------+"
echo "STOPPING YOUR MYSQL SERVICE"
echo "+-------------------------+"
sudo systemctl stop mysql

echo "+----------------------------------------------+"
echo "PURGING ALL FILES RELATED TO YOUR MYSQL DATABASE"
echo "+----------------------------------------------+"
sudo apt purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*

echo "+--------------------------------+"
echo "DELETING ALL FILES ASSOCIATED FROM"
echo "+--------------------------------+"
sudo rm -rf /etc/mysql /var/lib/mysql /var/log/mysql

echo "CLEANING UNUSED DISK SPACE"
sudo apt autoremove

sudo apt autoclean

echo "REMOVING MYSQL DATABASE CONFIGURATIONS"
sudo apt remove dbconfig-mysql
