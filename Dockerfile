FROM centos:latest
RUN yum install -y httpd \ 
zip \
unzip \
ADD https://all-free-download.com/free-website-templates/download/real_one_template_6890871.html /var/www/html/
WORKDIR /var/www/html
RUN unzip real_one_template_6890871.html
CMD ["usr/sbin/httpd", "-D" ,"FOREGROUND"]
EXPOSE 80
