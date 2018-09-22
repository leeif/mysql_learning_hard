#!/bin/bash
mysql -uroot -P 3306 -proot -D mysql -e "change master to MASTER_HOST = '10.1.0.100', MASTER_USER = 'root', MASTER_PASSWORD = 'root', MASTER_LOG_FILE = 'mysql-bin.000003', MASTER_LOG_POS = 154;"
mysql -uroot -P 3306 -proot -D mysql -e "start slave;"