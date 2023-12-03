FROM docker.io/library/centos:centos7

RUN yum install -y httpd

COPY index.html /var/www/html/

EXPOSE 80/tcp

ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
