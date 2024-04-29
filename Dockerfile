# Use the base image that includes Apache and PHP
FROM devopsedu/webapp

# Copy your PHP website files into the Apache document root
COPY . /var/www/html/

# Optionally, set the working directory
WORKDIR /var/www/html/

# Expose the HTTP port (default is 80)
EXPOSE 80

# Start the Apache web server when the container runs
CMD ["apache2-foreground"]
