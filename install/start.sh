#!/bin/bash
apachectl start
while ["$END" == '']; do
	sleep 10
	trap "/etc/init.d/apache2 stop && END=1" INT TERM
done
