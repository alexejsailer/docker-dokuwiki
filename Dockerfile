FROM ubuntu

RUN apt-get update && apt-get install -y wget apache2 php5 &&\
    mkdir /dokuwiki && cd /dokuwiki &&\ 
    wget http://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz && \
    # skip root folder while extracting
    tar -zxvf dokuwiki-stable.tgz --strip 1 &&\
    mv /dokuwiki /var/www/dokuwiki &&\
    chown www-data:www-data -R /var/www/dokuwiki
    
COPY install/000-default.conf /etc/apache2/sites-available/
COPY install/start.sh /

EXPOSE 80

ENTRYPOINT ["/start.sh"]



