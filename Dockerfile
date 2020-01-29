FROM drupal:latest

# Install MySQL client so we can use drush from inside the container, among other things.
# We also install git since we'll need it to install dependencies via Composer.
RUN apt-get update && apt-get install -y mariadb-client git

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/html\/web/g' /etc/apache2/sites-available/000-default.conf
VOLUME /var/www/html
