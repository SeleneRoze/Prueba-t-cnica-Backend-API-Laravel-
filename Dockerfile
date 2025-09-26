# Usa PHP 8.2 con FPM
FROM php:8.2-fpm

# Establece el directorio de trabajo
WORKDIR /var/www/html

# Instala dependencias necesarias
RUN apt-get update && apt-get install -y \
    libzip-dev unzip git curl \
    && docker-php-ext-install pdo pdo_mysql zip

# Copia todo el proyecto al contenedor
COPY storage/framework/testing .

# Instala Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Instala dependencias de PHP
RUN composer install --no-dev --optimize-autoloader

# Expone el puerto que Laravel usará
EXPOSE 8000

# Comando para levantar Laravel
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
