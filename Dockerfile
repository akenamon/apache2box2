FROM ubuntu:18.04
MAINTAINER  vinicius.torino@protonmail.com
RUN apt update
RUN apt install -y apache2
COPY index.html /var/www/html
RUN mkdir /var/run/apache2
ENV APACHE_RUN_DIR=/var/run/apache2
ENV APACHE_PID_FILE=/var/run/apache2/apache2.pid
ENV APACHE_RUN_USER=nobody
ENV APACHE_RUN_GROUP=www-data
ENV APACHE_LOG_DIR=/var/log/apache2
EXPOSE 80
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
