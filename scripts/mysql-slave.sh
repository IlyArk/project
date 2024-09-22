#!/bin/bash

cd /etc/project/MySQL

sudo cp slave/mysqld.cnf /etc/mysql/mysql.conf.d/

sudo systemctl restart mysql

STOP_REPLICA="stop replica;"
SQL_COMMAND="CHANGE REPLICATION SOURCE TO
    SOURCE_HOST='192.168.39.107',
    SOURCE_USER='repl',
    SOURCE_PASSWORD='oTUSlave#2020',
    SOURCE_AUTO_POSITION=1,
    GET_SOURCE_PUBLIC_KEY=1;"

SQL_REPLICA_START="START REPLICA;"

sudo mysql -e "$STOP_REPLICA"
sudo mysql -e "$SQL_COMMAND"
sudo mysql -e "$SQL_REPLICA_START"
