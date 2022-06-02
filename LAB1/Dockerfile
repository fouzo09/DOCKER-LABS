FROM ubuntu:18.04
MAINTAINER Mafouz DIALLO (mafouzdiallo@gmail.com)
RUN apt-get update
RUN apt-get install nginx -y
EXPOSE 80
ADD website /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]