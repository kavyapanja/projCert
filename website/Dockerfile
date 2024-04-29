# Use the base image for PHP web applications
FROM devopsedu/webapp

# Copy your PHP website into the web server's document root
COPY . /var/www/html/

# Optionally, set the working directory
WORKDIR /var/www/html/

# Expose the web server port
EXPOSE 80

# Start the Apache web server when the container runs
CMD ["apache2-foreground"]
