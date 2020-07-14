FROM centos

RUN yum install sudo vim httpd php git -y
COPY index.html /var/www/html/
EXPOSE 80

CMD /usr/sbin/httpd -DFOREGROUND
