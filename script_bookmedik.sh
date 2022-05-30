#!/bin/bash

sleep 30

mysql -u $USER --password=$PASSWD -h $HOST $DATABASE < /var/www/html/schema.sql

/usr/sbin/apache2ctl -D FOREGROUND
