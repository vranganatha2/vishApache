#creates apache container and adds html file
FROM ubuntu:12.04
RUN apt-get update
RUN apt-get install -y apache2 curl

RM /var/www/index.html
ADD index.html /var/www/

VOLUME /var/www/

EXPOSE 80
run service apache2 restart
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
