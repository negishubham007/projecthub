FROM ubuntu:latest
RUN apt-get update -y
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y \
zip \
unzip
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/dorang.zip .
RUN unzip dorang.zip 
RUN cp -rf dorang/* .
RUN rm -rf bdorang.zip.zip dorang
#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
#RUN service apache2 start
#ENTRYPOINT apachectl -D FOREGROUND
ENTRYPOINT service apache2 restart && bash
EXPOSE 80
#CMD ["apachectl", "-D",  "FOREGROUND"]
