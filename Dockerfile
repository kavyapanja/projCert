FROM php:7.4-apache  # Base image with Apache and PHP

# Copy website files to the document root
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Expose the HTTP port
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
