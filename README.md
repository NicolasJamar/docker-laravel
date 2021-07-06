# Docker-laravel

A simple docker apache2 for Laravel. 

> You need to have [composer](https://getcomposer.org/download/) installed on your OS. 

## Installation 

1. First install a Laravel project with composer

`composer -vvv create-project --prefer-dist laravel/laravel name-of-your-application`

2. Move the files in your lravel project : `apache2`, `Dockerfile`, `docker-compose.yml`

3. follow the instructions:

`docker-compose build`

`docker-compose up -d`

And it's done ! 

To close docker-compose : `docker-compose down`

## Your services

### Langage: PHP

#### What is PHP?

PHP is a server-side scripting language designed for web development, but which can also be used as a general-purpose programming language. PHP can be added to straight HTML or it can be used with a variety of templating engines and web frameworks. PHP code is usually processed by an interpreter, which is either implemented as a native module on the web-server or as a common gateway interface (CGI).

* **Website:** [php.net](http://php.net)
* **Documentation:** [php.net/docs.php](http://php.net/docs.php)

#### Container

* **Image used:** [library/php:8-apache](https://hub.docker.com/_/php/)

##### Usage

Place your PHP files in `./src` folder, access it with your browser at address [localhost](http://localhost).


* * *

### Database: MariaDB

#### What is MariaDB?

MariaDB is a community-developed fork of MySQL intended to remain free under the GNU GPL.

* **Website:** [mariadb.org](https://mariadb.org)
* **Documentation:** [mariadb.org/learn](https://mariadb.org/learn/)

#### Container

* **Image used:** [library/mariadb](https://hub.docker.com/_/mariadb/)

##### Usage

> **NOTE:** from dev POV, using MariaDB is strictly the same as using MySQL.

**IMPORTANT:** the first startup of this container is long : the db server needs to be initialized.

**NOTE:** the container don't create a database at startup - create it within your code (or with phpMyAdmin)

###### Access from another container

You can access the database **from another container** with the following informations:

* **host:** `mysql`
* **port:** `3306`
* **user:** `root`
* **pass:** `root`

###### Access from your host

You can access the database  **from you host** with the following informations:

* **host:** `localhost`
* **port:** `3306`
* **user:** `root`
* **pass:** `root`


* * *

### Tools: phpMyAdmin

#### What is phpMyAdmin?

A web interface for MySQL and MariaDB.

* **Website:** [phpmyadmin.net](https://www.phpmyadmin.net/)
* **Documentation:** [phpmyadmin.net/docs](https://www.phpmyadmin.net/docs/)

#### Container

* **Image used:** [phpmyadmin/phpmyadmin](https://hub.docker.com/r/phpmyadmin/phpmyadmin/)

##### Usage

The container is already configured to use the MySQL/MariaDB credentials.  
Access **phpMyAdmin** with your browser at address [localhost:8001](http://localhost:8001).