export LD_LIBRARY_PATH=/usr/local/mysql/lib/mysql/
DBNAME=tpcc_debug
WH=3
HOST=127.0.0.1
PORT=3305
STEP=10
pwd="111111"

../tpcc_start -h $HOST -P $PORT -d $DBNAME -u root -p $pwd -w $WH -c2 -r2 -l10
#> start.out 2>&1 &


