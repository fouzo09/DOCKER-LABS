FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

MAINTAINER Mafouz DIALLO <dev.mafouzdiallO@gmail.com>

RUN apt-get update -y \
    && apt-get upgrade -y 

RUN apt-get install php7.4 -y

RUN apt-get install libapache2-mod-php7.4 \
    php7.4-dev php7.4-zip php7.4-curl php7.4-mbstring \
    php7.4-mysql php7.4-gd php7.4-xml curl -y

RUN apt-get install apache2 -y \
    && service apache2 start  \
    && apt-get install mysql-server -y \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod +x /usr/local/bin/composer \
    && mkdir /var/www/blog

WORKDIR  /var/www/blog

COPY . .

RUN composer --ignore-platform-req=php install

RUN chmod -R 777 /var/www/blog

RUN a2enmod rewrite && service mysql start

EXPOSE 8001

ENTRYPOINT ["/var/www/blog/commandes.sh"]


