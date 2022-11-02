FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install apache2 -y \
zip \
unzip
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/built-better.zip .
RUN unzip built-better 
RUN cp -rf built-better/* .
RUN rm -rf built-better.zip built-better
CMD ["usr/sbin","-D","FOREGROUND"]
EXPOSE 80
