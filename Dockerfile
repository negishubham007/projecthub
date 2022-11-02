FROM ubuntu:latest
RUN apt-get update -y
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y \
zip \
unzip
WORKDIR /var/www/html
RUN rm -rf *
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/brandon.zip .
RUN unzip brandon.zip
RUN cp -rf brandon/* .
RUN rm -rf brandon.zip brandon
#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
#RUN service apache2 start
#ENTRYPOINT apachectl -D FOREGROUND
ENTRYPOINT service apache2 restart && bash
EXPOSE 80
#CMD ["apachectl", "-D",  "FOREGROUND"]
