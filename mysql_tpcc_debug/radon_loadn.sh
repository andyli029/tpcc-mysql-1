export LD_LIBRARY_PATH=/usr/local/mysql/lib/mysql/
DBNAME=tpcc_debug
WH=3
HOST=127.0.0.1
PORT=3305
STEP=3
pwd="111111"

../tpcc_load -h $HOST -P $PORT -d $DBNAME -u root -p $pwd -w $WH -l 1 -m 1 -n $WH > 1.out &

x=1

while [ $x -le $WH ]
do
 echo $x $(( $x + $STEP - 1 ))
../tpcc_load -h $HOST -P $PORT -d $DBNAME -u root -p $pwd -w $WH -l 2 -m $x -n $(( $x + $STEP - 1 ))  > 2_$x.out &
../tpcc_load -h $HOST -P $PORT -d $DBNAME -u root -p $pwd -w $WH -l 3 -m $x -n $(( $x + $STEP - 1 ))  > 3_$x.out &
../tpcc_load -h $HOST -P $PORT -d $DBNAME -u root -p $pwd -w $WH -l 4 -m $x -n $(( $x + $STEP - 1 ))  > 4_$x.out &
 x=$(( $x + $STEP ))
done

