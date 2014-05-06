#!/bin/bash

mkdir /var/run/sshd

# create an ubuntu user
PASS=`pwgen -c -n -1 10`
PASS=ubuntu
echo "User: ubuntu Pass: $PASS"
useradd --create-home --shell /bin/bash --user-group --groups adm,sudo ubuntu
echo "ubuntu:$PASS" | chpasswd

/usr/bin/supervisord -c /opt/supervisord.conf

cd /tty.js && node ./tty-me.js --daemonize

# /usr/sbin/mysqld
/usr/bin/mysqld_safe &

echo "Ready"

while [ 1 ]; do
    /bin/bash
done
