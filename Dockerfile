FROM php:7.2.1-fpm-stretch

ADD https://cdn.jsdelivr.net/gh/mlocati/docker-php-extension-installer/install-php-extensions /usr/local/bin/

RUN chmod uga+x /usr/local/bin/install-php-extensions && sync \
    && install-php-extensions bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv imap interbase intl json ldap mbstring mcrypt mysqli opcache pcntl pdo pdo_dblib pdo_mysql phar posix pspell readline recode reflection session shmop simplexml snmp soap sockets spl standard tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter xsl zip

#RUN pecl install redis-5.2.0 \
#    && docker-php-ext-enable redis

CMD [ "php-fpm" ]
