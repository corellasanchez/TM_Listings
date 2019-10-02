#!/bin/sh
database=$1;
filename=$2;
root_password='password';

mysql -uroot --password=${root_password} ${database} < /opt/data/${filename}

echo "migration finished."
