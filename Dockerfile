FROM ubuntu:18.04
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update 
RUN apt install apache2 -y
RUN apt install php libapache2-mod-php php-mysql php-cli -y
RUN echo '<?php phpinfo(); ?>' | tee /var/www/html/info.php
RUN service apache2 start
EXPOSE 80
