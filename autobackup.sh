#Backup Important Project Folder / Auto Backup Project Folder Daily 
#!/bin/bash
# Backup the 'functions' directory with current date


src="/home/ec2-user/functions"
dest="/home/ec2-user/Backups"
timestamp=$(date +%F)
backup_file="$dest/mydata_backup_$timestamp"

mkdir -p "$dest"


cp -r $src $backup_file


echo "Backup completed successfully." | mail -s "Backup Success" hasinish6@gmail.com

