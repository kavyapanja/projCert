# Use a basic PHP image (without Apache)
FROM php:7.4-cli  # Change as needed

# Install Apache and any additional PHP extensions
RUN apt-get update && apt-get install -y apache2 libapache2-mod-php7.4

# Enable Apache's mod_php for PHP integration
RUN a2enmod php7.4

# Copy your PHP website files into the Apache document root
COPY . /var/www/html/

# Set the correct permissions (if needed)
RUN chown -R www-data:www-data /var/www/html/

# Expose the HTTP port
EXPOSE 80

# Start the Apache web server when the container runs
CMD ["apache2ctl", "-D", "FOREGROUND"]
