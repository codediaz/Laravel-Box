FROM php:8.0-fpm
RUN apt-get update && apt-get install -y zip unzip
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
WORKDIR /app
