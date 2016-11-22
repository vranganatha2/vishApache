#creates apache container and adds html file
FROM ubuntu:12.04
RUN apt-get update
RUN apt-get install -y apache2 curl

ADD index.html /var/www/html/
VOLUME /var/www/html/

EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
sudo service apache2 restart
