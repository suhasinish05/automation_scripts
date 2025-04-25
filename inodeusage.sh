# Monitoring Inode Usage and Sending Alerts 
#!/bin/bash
# This script checks inode usage and sends an alert if the usage exceeds 90%

# Get inode usage for a specified directory or filesystem
inode_usage=$(df -i /home/ec2-user  | grep / | awk '{ print $5 }' | sed 's/%//g')

# Check if inode usage is greater than 90% but right now i have taken 1 since i havent have usuage upto 90
if [ "$inode_usage" -gt 1 ]; then
    # If inode usage exceeds 90%, send an email alert
    echo "Warning: Inode usage is at $inode_usage%" | mail -s "Inode Usage Alert" hasinish6@gmail.com
fi

