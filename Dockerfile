
 # el ubuntu
FROM ubuntu:16.04
RUN  apt-get update -y
#para apache
RUN apt-get install apache2 -y
# para php
RUN apt-get install php php7.0-gd -y
RUN apt-get install php libapache2-mod-php php7.0-mcrypt -y
ENTRYPOINT apache2ctl -D FOREGROUND
COPY --chown=www-data:www-data dokuwiki/ /var/www/html
RUN rm /var/www/html/index.html