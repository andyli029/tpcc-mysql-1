#mysql -h 127.0.0.1 -P 3308 -uroot -p123456 -e "create database tpcc;"
mysql -h 127.0.0.1 -P 3305 -uroot -p111111 -e "create database tpcc_debug;"
mysql -h 127.0.0.1 -P 3305 -uroot -p111111 -D tpcc_debug <./create_table.sql

#mysql -h 127.0.0.1 -P 3308 -uroot -p123456 -D tpcc<./add_fkey_idx.sql
