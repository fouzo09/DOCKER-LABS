#!/bin/bash

service mysql stop
usermod -d /var/lib/mysql/ mysql
service mysql start
service mysql status

dbName="blog"
userRoot="root"

mysql -u$userRoot -e "CREATE DATABASE $dbName;"
mysql -u$userRoot -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Blog@2022!';"

php artisan key:generate
php artisan migrate 
php artisan db:seed 
php artisan db:seed --class=DummyDataSeeder
php -S 0.0.0.0:8001 -t public