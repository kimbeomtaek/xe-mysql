FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y apache2 php5 php5-mysql mysql-client git php5-gd

WORKDIR /var/www/html
RUN git clone https://github.com/xpressengine/xe-core
ADD database.sh /database.sh
RUN chmod +x /database.sh

WORKDIR /var/www/html
RUN chmod 707 -R  /var/www/html/xe-core

ENTRYPOINT /database.sh
