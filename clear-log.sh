#!/bin/bash
data=(`find /var/log/ -name *.log`);
for log in "${data[@]}"
do
echo "$log clear"
echo > $log
done
data=(`find /var/log/ -name *.err`);
for log in "${data[@]}"
do
echo "$log clear"
echo > $log
done
data=(`find /var/log/ -name mail.*`);
for log in "${data[@]}"
do
echo "$log clear"
echo > $log
done
echo > /var/log/syslog
echo > /var/log/btmp
echo > /var/log/messages
echo > /var/log/debug
echo > /var/log/apport.log
echo > /var/log/auth.log
echo > /var/log/dmesg
echo > /var/log/fail2ban.log
echo > /var/log/kern.log
echo > /var/log/syslog
echo > /var/log/trojan.log
echo > /var/log/nginx/access.log
echo > /var/log/v2ray/access.log
