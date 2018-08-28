# el ubuntu
FROM ubuntu:16.04
RUN  apt-get update -y
RUN apt-get install apache2 php7.0 libapache2-mod-php7.0 -y
COPY --chown=www-data:www-data dokuwiki/ /var/www/html/
RUN service apache2 start

