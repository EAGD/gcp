Bitacora de trabajo
-------------------------------------------------------------------------------------------------------------------------------------

Proceso de instalación en GCP

https://console.cloud.google.com/

Menú izquierdo, Compute Engine -> VM Instances

Create -> name -> 
Region -> south-america.... -> Zone -> a/b/c  se puede elegir cualquiera por latencia

Allow -> http y https

create 

Menu izquierdo, Networking, VPC Networks -> External IP Addreses

change -> ephemereal => static 

Compute Engine -> VM Instances -> SSH in machine

sudo bash
$ sudo apt-get update

$ sudo apt-get install apache2 php libapache2-mod-php

$ sudo apt-get install curl php-cli php-mbstring git unzip

$ sudo apt-get install php7.0-zip

$ sudo apt-get install php7.0-xml

$ php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

$ sudo cp composer.phar /usr/local/bin/

$ sudo ln -s /usr/local/bin/composer.phar /usr/local/bin/composer

$ cd /var/www/html
$ sudo rm index.php
$ sudo git init 
$ sudo git clone http://gitlabtrans.face.ubiobio.cl:8081/19532461/taller-apiario.git

$ sudo composer update

$ sudo nano .env 
paste:
APP_NAME=taller-apiario
APP_ENV=local
APP_KEY=base64:5RcH6nnlH0XCOQ5+QXtU/bRIUfg2N5hDdf5pdDszThw=
APP_DEBUG=true
APP_URL=http:http://35.198.3.118

LOG_CHANNEL=stack

DB_CONNECTION=mysql
DB_HOST=mysqltrans.face.ubiobio.cl
DB_PORT=3306
DB_DATABASE=g4_bd
DB_USERNAME=grupo4taller
DB_PASSWORD=E.gonzalez2019

BROADCAST_DRIVER=log
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_DRIVER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"

$ ls
$ sudo nano index.php
paste:
///<?php
///header('Location: taller-apiario/taller-apiario/public/index.php');
///exit;
///?>

$ sudo chmod -R o+w taller-apiario/   (esto no es seguro, pero sirve para mostrar el proyecto, en la pega lo averiguaré)

$ http://34.95.134.239

pasando a nuevo repo en github
