#This is the first docker created by
FROM centos:7
RUN yum  update -y

RUN yum  install httpd -y
COPY . index.html /var/www/html/
EXPOSE 80
CMD ["httpd","-D","FOREGROUND"]
