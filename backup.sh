#!/bin/sh

now=$(date +"%d-%m-%Y_%H-%M")

tar -czvf /var/opt/temp/backup-data-$now.tar.gz /var/opt/backup_data

bash /home/send.bash /var/opt/temp/backup-data-$now.tar.gz

rm /var/opt/temp/backup-data-$now.tar.gz
