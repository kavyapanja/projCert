# Use the devopsedu/webapp image as the base
FROM devopsedu/webapp

# Install PHP and Apache on top of the base image
RUN apt-get update \
    && apt-get install -y \
        php7.4 \
        libapache2-mod-php7.4

# Copy your PHP website files into the Apache document root
COPY . /var/www/html/

# Optionally, set the working directory
WORKDIR /var/www/html/

# Expose the HTTP port (default is 80)
EXPOSE 80

# Start the Apache web server when the container runs
CMD ["apache2-foreground"]
