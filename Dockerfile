FROM php:8.0-apache
WORKDIR /var/www/html
RUN apt-get update && apt-get install -y libmariadb-dev
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo pdo_mysql
RUN a2enmod rewrite
RUN service apache2 restart