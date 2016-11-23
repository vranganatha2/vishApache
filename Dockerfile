#creates apache container and adds html file
FROM ubuntu:12.04
RUN apt-get update
RUN apt-get install -y apache2 curl
RUN RM /var/www/html/index.html
RUN ADD index.html /var/www/html/
RUN RM /var/www/html/index.html
VOLUME /var/www/html/

EXPOSE 80
run service apache2 restart
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
