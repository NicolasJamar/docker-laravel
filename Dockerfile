# Install PHP Apache
FROM php:8-apache

# Install PHP extensions
RUN apt-get update && apt-get install -y git gnupg unzip zip libxml2-dev libpq-dev && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql
RUN docker-php-ext-install opcache mysqli pdo_mysql pdo_pgsql pgsql session soap

#Config Apache
COPY apache2/vhost.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite remoteip

RUN sed -ri 's/^www-data:x:33:33:/www-data:x:1000:50:/' /etc/passwd

