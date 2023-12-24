FROM ubuntu:latest

COPY ./send.bash /home/send.bash
COPY ./backup.sh /etc/periodic/hourly/backup
RUN chmod +x /etc/periodic/hourly/backup

RUN mkdir /var/opt/backup_ep
RUN mkdir /var/opt/backup_data
RUN mkdir /var/opt/temp

RUN apt-get update && apt-get install -y cron && apt-get install -y curl


CMD ["cron", "-f"]