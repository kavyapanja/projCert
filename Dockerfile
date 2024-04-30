# Use devopsedu/webapp as the base image
FROM devopsedu/webapp:latest

# Copy the PHP website files into the container
COPY . /var/www/html/

# Set permissions if needed
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 (optional, depending on the base image)
EXPOSE 80
