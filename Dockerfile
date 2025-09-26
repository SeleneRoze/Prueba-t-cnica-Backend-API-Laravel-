# 1️⃣ Base PHP 8.2 con FPM
FROM php:8.2-fpm

# 2️⃣ Establecer directorio de trabajo
WORKDIR /var/www/html

# 3️⃣ Instalar dependencias del sistema necesarias
RUN apt-get update && apt-get install -y \
    libzip-dev unzip git curl libonig-dev libicu-dev libxml2-dev \
    gnupg2 apt-transport-https unixodbc-dev msodbcsql18 \
    && docker-php-ext-install pdo pdo_mysql zip mbstring bcmath intl xml

# 4️⃣ Instalar Microsoft ODBC Driver para SQL Server y pdo_sqlsrv
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && curl https://packages.microsoft.com/config/debian/12/prod.list > /etc/apt/sources.list.d/mssql-release.list \
    && apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql18 unixodbc-dev \
    && pecl install sqlsrv pdo_sqlsrv \
    && docker-php-ext-enable sqlsrv pdo_sqlsrv

# 5️⃣ Copiar proyecto
COPY . .

# 6️⃣ Instalar Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# 7️⃣ Instalar dependencias de PHP
RUN composer install --no-dev --optimize-autoloader

# 8️⃣ Dar permisos
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# 9️⃣ Exponer puerto
EXPOSE 8000

# 🔟 Comando para levantar Laravel
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
