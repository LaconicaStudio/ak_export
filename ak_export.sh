#!/bin/sh

FILE_PATH="/root/docker-pure-ftpd/foo/export.csv"

docker cp $FILE_PATH mysql1:/tmp/export.csv
rm -f $FILE_PATH

docker exec -it mysql1 mysql -uroot -p'4kPJt5;Z,JXi7' --local-infile=1 -Bse "use ak_metabase; SET GLOBAL local_infile=1; LOAD DATA LOCAL INFILE $

echo 'DONE'


