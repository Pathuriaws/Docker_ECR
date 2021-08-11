FROM ubuntu:18.04
RUN apt update 
RUN apt install apache2 -y
RUN apt install php libapache2-mod-php php-mysql php-cli -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN echo '<?php phpinfo(); ?>' | tee /var/www/html/info.php
RUN service apache2 start
EXPOSE 80
