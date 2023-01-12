FROM ubuntu
MAINTAINER 2000
USER root
EXPOSE 80
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y apache2
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
