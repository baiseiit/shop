# Online store

### The online store was created using the Baiseiit Framework in PHP (https://github.com/baiseiit/baiseiit)

The project has an authorization system with user roles, a product page with an order form, and a product management system.

You can watch the project on youtube (https://www.youtube.com/playlist?list=PLUHqv6d5Iow_jT8C3VOfIfYbNDxM4splc).

> The minimum PHP version must be 7.0.10

# Install

1. Cloning a project

```bash
git clone https://github.com/baiseiit/shop.git
```

2. Install composer (https://getcomposer.org/download/)

3. Install dependencies using composer

```bash
composer install
```

4. Open config/app.php file and establish a database connection. The base directory contains the blog.sql database file. Import blog.sql to mysql.

```php
define('DB_CONNECTION', 'mysql');
define('DB_HOST', '127.0.0.1');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'blog');
```

Start the server
>Run the command on the command line in the project's base folder

```bash
    php artisan run
```