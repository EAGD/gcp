FROM debian:latest

RUN apt-get update && apt-get install apache2 php libapache2-mod-php && apt-get install curl php-cli php-mbstring git unzip && apt-get install php7.0-zip && apt-get install php7.0-xml

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
php composer-setup.php \
php -r "unlink('composer-setup.php');"

CMD cp composer.phar /usr/local/bin/ && ln -s /usr/local/bin/composer.phar /usr/local/bin/composer

EXPOSE 80