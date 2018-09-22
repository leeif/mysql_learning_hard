#!/bin/bash
mysql -uroot -P 3306 -proot -D mysql -e "create database replication_test;"
mysql -uroot -P 3306 -proot -D mysql -e "create table replication_test.test_table (id int not null auto_increment, name varchar(255), primary key (id));"

data=""
for i in {1..99}; do d="('name_$i'),"; data=$data$d; done
mysql -uroot -P 3306 -proot -D mysql -e "insert into replication_test.test_table (name) values $data('name_100');"
