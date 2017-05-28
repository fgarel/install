FROM ubuntu:16.04
LABEL MAINTAINER Aldo Ridhoni<aldoridhoni@gmail.com>
# Mapnik for Docker

#FROM ubuntu:latest
ENV LANG C.UTF-8
ENV MAPNIK_VERSION 3.0.10
ENV LD_LIBRARY_PATH /lib:/usr/lib:/usr/local/lib
#RUN update-locale LANG=C.UTF-8

# Essential stuffs
RUN apt-get update && apt-get -qq install -y --no-install-recommends \
    build-essential \
    sudo \
    software-properties-common \
    curl \
    unzip \
    aptitude \
    python-pip \
    python-setuptools \
    git

# Recopie des fichiers d'install installOSM*.sh
# COPY installOSMMapnikUbuntuDockerPaquet3.sh /usr/bin/
COPY installOSM.sh /usr/bin/
COPY installOSMCartoCSS.sh /usr/bin/
COPY installOSMBoostUbuntuPaquet.sh /usr/bin/
COPY installOSMMapnikUbuntuPaquet.sh /usr/bin/
COPY installOSMPythonMapnikUbuntu.sh /usr/bin/


# Execution des fichiers d'install dans le container
# RUN /usr/bin/installOSMMapnikUbuntuDockerPaquet3.sh
RUN /usr/bin/installOSM.sh
RUN /usr/bin/installOSMCartoCSS.sh
RUN /usr/bin/installOSMBoostUbuntuPaquet.sh
RUN /usr/bin/installOSMMapnikUbuntuPaquet.sh
RUN /usr/bin/installOSMPythonMapnikUbuntu.sh


# Supervisor
RUN pip install --upgrade pip
RUN pip install supervisor
RUN echo_supervisord_conf > /etc/supervisord.conf && printf "[include]\\nfiles = /etc/supervisord/*" >> /etc/supervisord.conf
RUN mkdir -p /etc/supervisord
COPY etc/supervisor_uwsgi.ini /etc/supervisord/uwsgi.ini
COPY etc/supervisor_inet.conf /etc/supervisord/inet.conf
COPY etc/supervisor_nginx.ini /etc/supervisord/nginx.conf


EXPOSE 9001

ENV HOST_IP `ifconfig | grep inet | grep Mask:255.255.255.0 | cut -d ' ' -f 12 | cut -d ':' -f 2`

CMD ["supervisord", "-n"]
