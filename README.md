# Simple Drupal Docker Development environment

## Requirements

- [Docker Desktop](https://www.docker.com/products/docker-desktop)

## How to use

### Create your Compose file

1. Copy `example.docker-compose.yml` to `docker-compose.yml`.
2. Adjust the environment settings (e.g. `MYSQL_DATABASE`) as necessary.

### Build and launch your application

Run `docker-compose up`

### Install Drupal

1. Get the name of the Drupal container:
    ```shell script
    $ docker ps
    ```
2. SSH to the container:
    ```shell script
    $ docker exec -it <container-name> /bin/bash
    ```
3. Once inside the container, install Drupal using `drush`:
    ```shell script
    $ ./vendor/bin/drush si standard --site-name="My Drupal 8 site"
    ```

### Accessing the site

You can access the site by going to http://localhost:8080

##[About Composer template for Drupal projects](https://github.com/drupal-composer/drupal-project.)
