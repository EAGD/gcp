Bitacora de trabajo

21-03-2020 14:22
El ale aun no aparece para ayudar, le hable hace 3 dias y no contesta

21-03-2020 20:05
El ale sigue sin aparecer, aun no hago cambios

21-03-2020 22:59
Entré a la clase de joan y redacté un correo diciendo que este socio no habia participado
avancé un poco más en el informe y modelé toda la base de datos
Esperando respuesta de joan y del ale que aun no aparece

22-03-2020 11:34
Joan me respondió, dijo que lo hablaramos hoy a medio día
El ale aun no aparece y si no llega a la reunion... cagó

22-03-2020 12:25
MER listo en jpg

22-03-2020 12:35
MR listo en jpg

22-03-2020 12:51
composer update al proyecto y pull al escritorio con lo nuevo

22-03-2020 14:22
problemas con git, dice que estoy en una rama distinta y he trabajado solo con la master

22-03-2020 14:24
lo arregle, tenia que escribir git rebase --continue

22-03-2020 16:26
no se transparenta el server lpm

22-03-2020 20:12
estoy usando GCP como futuro SRE pero aun no transparento nada

22-03-2020 23:08
Transparenté todo en http://34.95.134.239, vuelvo al informe

23-03-2020 1:57
procesos de negocios antes del sistema listos en jpg, sigo con los post sistema

23-03-2020 2:33
Proceso de negocio post sistema listo, casos de uso ahora

23-03-2020 3:00
No lo habia escrito, pero Joan me respondió diciendo que el ale no iba a terminar el ramo,
nisiquiera se lo dijo el, otra persona le comentó, mañana temprano sigo con los casos de uso,
dormiré un poco y haré otro commit cuando despierte

23-02-2020 11:38
Desperté a las 9 pero no quería tocar el compu, ahora continuo

23-03-2020 12:49
Con retrasos en la casa, pero casos de uso terminados, informe ahora

23-03-2020 13:52
Avancé en el informe, pero aun queda justificar los casos de uso y el resto, ya va quedando menos, ahora ire a almorzar

23-03-2020 18:04
Casos de uso y especificaciones listas, todos los modelos ya insertados en el informe, falta poco

23-03-2020 19:20
Informe casi listo, faltan 2 puntos, pruebas y estimaciones

23-03-2020 21:19
Informe entregado, descansaré un poco antes de ponerme full programación

24-03-2020 20:25
Volvi, me tocó subir al techo a tapar agujeros en las tejas y limpiar el cañon de la estufa con un chascón que se me quedó atrapado, perdí harto tiempo ahí, lo bueno es que ya volvi y voy de encéfalo

24-03-2020 22:56
Añadi una plantilla, ya hice las primeras migraciones y añadí scaffold para hacer la pega más corta

25-03-2020 10:25
nuevo commit, ahora con infYom porque scaffold tiene bugs en su versión actual, aprovecho de quejarme, total esto lo van a tener que leer, si es que lo leen tambien

25-03-2020 16:58
Saqué scaffold y añadi infYom para hacer la pega más corta, todas las tablas creadas, falta rellenar con info y la creacion de los codigos QR + el informe generado + alguna proyección basada en los datos de cada ficha de una colmena.
Me regalaron un día más, estoy contento por ello pero me pasaron a llevar con sus comentarios 

25-03-2020 19:14
se añadieron las dependencias de simple QR code

25-03-2020 23:11
se añadieron las dependencias de PDF, va quedando menos, me falta validar un par de tablas más y enlazarlas en las views

26-03-2020 10:25
Aun no puedo enlazar bien las vistas, tengo miedo

26-03-2020 12:30
ya no sé que movi, pero eché a perder las fichas

-------------------------------------------------------------------------------------------------------------------------------------

Proceso de instalación en GCP

https://console.cloud.google.com/
esteban.gonzalez1501@alumnos.ubiobio.cl
4gT$mM49U

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
