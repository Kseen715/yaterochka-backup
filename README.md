# YaTёrochka-backup
<p align="center">
  <img src="https://raw.githubusercontent.com/Kseen715/imgs/main/favicon.ico" />
</p>

## Description
This is nginx part of [YaTёrochka project](https://github.com/Kseen715/yaterochka). It's a web application written as a course work for the 3rd year of study at the university. 

The project is a web application for a fictional company that sells random goods. The application allows you to view the catalog of goods, view the history of orders, and also allows you to log in to your Admin account.

## Usage
Docker-compose:
```
version: '3'
services:
  yaterochka-backup:
    image: kseen/yaterochka-backup:latest
    container_name: yaterochka-backup
    environment:
      - TOKEN=<yandex app token>
    volumes:
      - /mnt/d/ydb/yat-db-init:/var/opt/backup_ep    # PostgreSQL entrypoint path
      - /mnt/d/ydb/yat-db:/var/opt/backup_data       # PostgreSQL data path
```
