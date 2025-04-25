#!/bin/bash
# monitoring the services and if any services goes down it start the service automatically and monitored for every minute
service="sshd crond docker maven nginx"
for i in $service
do
 output=`systemctl is-active $i`
 if [ $output != active ] ;
 then
 sudo systemctl start $i
 echo " the $i was inactive and started back" >> temp
 echo " Issue in services " | mail -s "Alert on $i Service" hasinish6@gmail.com
 fi
done
