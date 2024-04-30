# Use the official PHP image with Apache
FROM devopsedu/webapp

# Copy your PHP application files to the Apache document root
COPY . /var/www/html/

# Expose the default HTTP port
EXPOSE 80

