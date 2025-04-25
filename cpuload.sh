#!/bin/bash
# Monitor CPU Load on Production or Test Server every minute

load=$(uptime | awk -F'load average:' '{ print $2 }' | cut -d',' -f1 | sed 's/ //g')
threshold=5.0
if (( $(echo "$load > $threshold" | bc -l) )); then
  echo "High CPU Load Detected: $load" | mail -s "CPU Alert" hasinish05@gmail.com
fi

