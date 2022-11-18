FROM ubuntu:18.04
LABEL maintainer="wolee777 <wolee777@gmail.com>"
# install apache
RUN apt-get update && \
    apt-get install -y apache2
COPY . /var/www/html
EXPOSE 80
CMD [ "/usr/sbin/apache2ctl", "-DFOREGROUND" ]