export LD_LIBRARY_PATH=/usr/local/mysql/lib/mysql/
DBNAME=tpcc_one
WH=3
HOST=127.0.0.1
PORT=3308
STEP=10
pwd="123456"

../tpcc_start -h $HOST -P $PORT -d $DBNAME -u root -p $pwd -w $WH -c2 -r10 -l100 > start.out 2>&1 &


