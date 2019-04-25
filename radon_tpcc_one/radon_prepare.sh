#mysql -h 127.0.0.1 -P 3308 -uroot -p123456 -e "create database tpcc;"
mysql -h 127.0.0.1 -P 3308 -uroot -p123456 -e "create database tpcc_one;"
mysql -h 127.0.0.1 -P 3308 -uroot -p123456 -D tpcc_one <./create_table.sql

#mysql -h 127.0.0.1 -P 3308 -uroot -p123456 -D tpcc<./add_fkey_idx.sql
