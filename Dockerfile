FROM ubuntu20.4
RUN apt-get update
RUN sudo apt -y  install apache2
CMD sudo systemctl start apache2
ADD . /var/www/html/
CMD apacapachectl-D FOREGROUND 
RUN apt-get update
ENTRYPOINT apacapachectl-D FOREGROUND

