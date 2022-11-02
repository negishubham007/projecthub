FROM ubuntu:latest
RUN apt-get update -y
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y \
zip \
unzip
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/built-better.zip .
RUN unzip built-better 
RUN cp -rf html/* .
RUN rm -rf built-better.zip html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80
CMD ["apachectl", "-D",  "FOREGROUND"]
