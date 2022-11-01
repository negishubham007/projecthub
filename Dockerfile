FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install apache2 -y \
zip \
unzip
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/huddle.zip .
RUN unzip huddle 
RUN cp -rf huddle/* .
CMD ["usr/sbin","-D","FOREGROUND"]
EXPOSE 80
