FROM drupal:latest

# Install MySQL client so we can use drush from inside the container, among other things.
RUN apt-get update && apt-get install -y mariadb-client

RUN sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/html\/web/g' /etc/apache2/sites-available/000-default.conf
VOLUME /var/www/html
