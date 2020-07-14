FROM centos

RUN yum install sudo vim httpd php git /sbin/service -y
COPY index.html /var/www/html/
EXPOSE 80
CMD /usr/bin/httpd -DFOREGROUND && /bin/bash
