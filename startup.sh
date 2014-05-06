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

/usr/bin/mysqld_safe &

## Grab the latest workshop files
su -c "git clone https://github.com/dimsumlabs/ml_workshop.git /home/ubuntu/ml_workshop" ubuntu

while [ 1 ]; do
    /bin/bash
done
