#!/bin/bash
size=`df -h | sed -n 5p | awk -F " " '{print$(NF-1)}' | sed s/%//ig`

if [ $size -gt 20 ]; then
 echo "The disk Size is full :(" | mail -s "Alert on Disk Size" hasinish6@gmail.com
else
        echo "The disk has enough space "
fi
