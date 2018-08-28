# el ubuntu
FROM ubuntu:16.04
RUN  apt-get update -y
#para apache
RUN apt-get install apache2 -y
EXPOSE 80
COPY --chown=www-data:www-data dokuwiki/ /var/www/html/

# para php
Run apt-get install php libapache2-mod-php php-mcrypt -y
ENTRYPOINT apache2ctl -D FOREGROUND

