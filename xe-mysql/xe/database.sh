#!/bin/bash

mysql -h db -u root -p$DB_ENV_MYSQL_ROOT_PASSWORD -e "create database xe"
apachectl -DFOREGROUND
