FROM centos

RUN yum install sudo vim httpd php git /sbin/service -y
RUN cp ./var/www/html/*.html /var/www/html/
EXPOSE 80
CMD /usr/bin/httpd -DFOREGROUND && /bin/bash
