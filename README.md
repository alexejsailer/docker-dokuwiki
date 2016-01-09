docker-dokuwiki
=====

Simple Dockerfile to build a dokuwiki image. It's not intended to use this in production.

alexej@surrogate:~/docker-dokuwiki> sudo docker build -t dokuwiki:v1 .

alexej@surrogate:~/docker-dokuwiki > sudo docker run -d -p 80:80 dokuwiki:v1

Open your Browser and go to: http://localhost/dokuwiki/install.php

After the installation is done, you should remove the installation file.

alexej@surrogate:~/docker-dokuwiki > sudo docker ps

CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                NAMES

1e12934fc261        dokuwiki:v4         "/start.sh"         4 minutes ago       Up 4 minutes        0.0.0.0:80->80/tcp   

elegant_brahmagupta

alexej@surrogate:~/docker-dokuwiki > sudo docker exec -ti 1e12 /bin/bash

root@1e12934fc261:/# rm /var/www/dokuwiki/install.php 
