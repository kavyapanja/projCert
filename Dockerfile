# Use the official PHP image with Apache
FROM php:7.4-apache  # Use the correct base image with Apache installed

# Copy your PHP website files into the Apache document root
COPY . /var/www/html/

# Set the working directory (optional)
WORKDIR /var/www/html/

# Expose the HTTP port (default is 80)
EXPOSE 80

# Start the Apache web server when the container runs
CMD ["apache2-foreground"]
