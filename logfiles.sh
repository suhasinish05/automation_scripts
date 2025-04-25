#!/bin/bash

# script for Clean Old Log Files Automatically / Auto-Delete Log Files Older Than 7 Days

# for more then 7 days , change 1 =7

find /home/ec2-user -name "*.log" -type f -mtime -1 -delete

echo "deleted log files older than 1 day,to  ensure our disk doesn’t fill up."  | mail -s " Auto-Deleted Log Files Older Than 1 Day" hasinish6@gmail.com
