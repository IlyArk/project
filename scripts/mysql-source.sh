#!/bin/bash

cd /etc/project/MySQL/source

sudo cp mysqld.cnf /etc/mysql/mysql.conf.d/

sudo systemctl restart mysql

SQL_COMMAND="CREATE USER 'repl'@'%' IDENTIFIED WITH caching_sha2_password BY 'rename27!%';"
GET_RULES="GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';"

sudo mysql -e "$SQL_COMMAND"
sudo mysql -e "$GET_RULES"
