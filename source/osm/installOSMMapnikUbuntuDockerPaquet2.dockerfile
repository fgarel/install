# Mapnik for Docker
# le dockerfile original est Ici
# https://hub.docker.com/r/aldoridhoni/mapnik-tilestache/~/dockerfile/

FROM ubuntu:latest

LABEL MAINTAINER Frederic Garel<frederic.garel@gmail.com>

ENV LANG C.UTF-8
ENV MAPNIK_VERSION 3.0.15
ENV LD_LIBRARY_PATH /lib:/usr/lib:/usr/local/lib

# Essential stuffs
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends \
    apt-utils
RUN apt-get install -y --no-install-recommends \
    apt-file \
    mlocate \
    vim
RUN apt-get install -y --no-install-recommends \
    build-essential
RUN apt-get install -y --no-install-recommends \
    sudo \
    software-properties-common
RUN apt-get install -y --no-install-recommends \
    curl \
    unzip
RUN apt-get install -y --no-install-recommends \
    aptitude \
    python-pip \
    python-setuptools \
    git

# Boost
RUN apt-get install -y --no-install-recommends \
    libboost-dev \
    libboost-filesystem-dev \
    libboost-program-options-dev \
    libboost-python-dev \
    libboost-regex-dev \
    libboost-system-dev \
    libboost-thread-dev

# Mapnik dependencies
RUN apt-get install -y --no-install-recommends \
    libicu-dev \
    libtiff5-dev \
    libfreetype6-dev
RUN apt-get install -y --no-install-recommends \
    libpng12-dev \
    libxml2-dev \
    libproj-dev
RUN apt-get install -y --no-install-recommends \
    libsqlite3-dev
RUN apt-get install -y --no-install-recommends \
    libgdal-dev
RUN apt-get install -y --no-install-recommends \
    libcairo-dev
RUN apt-get install -y --no-install-recommends \
    python-cairo-dev \
    postgresql-contrib \
    libharfbuzz-dev

# Recopie des fichiers d'install installOSM*.sh
COPY installOSMMapnikUbuntuDockerPaquet3.sh /usr/bin/
COPY installOSMUbuntu.sh /usr/bin/
COPY installOSMTools.sh /usr/bin/
COPY installOSMCartoCSS.sh /usr/bin/
COPY installOSMMapnikUbuntuPaquet.sh /usr/bin/
COPY installOSMPythonMapnikUbuntu.sh /usr/bin/
#COPY installOSMTirex.sh /usr/bin/
#COPY installOSMTilemanUbuntu.sh /usr/bin/
COPY installOSMTilestache.sh /usr/bin/


# Execution des fichiers d'install dans le container
RUN /usr/bin/installOSMMapnikUbuntuDockerPaquet3.sh
#RUN /usr/bin/installOSMUbuntu.sh
#RUN /usr/bin/installOSMTools.sh
#RUN /usr/bin/installOSMCartoCSS.sh
#RUN /usr/bin/installOSMMapnikUbuntuPaquet.sh
#RUN /usr/bin/installOSMPythonMapnikUbuntu.sh
#RUN /usr/bin/installOSMTirex.sh
#RUN /usr/bin/installOSMTilemanUbuntu.sh
#RUN /usr/bin/installOSMTilestache.sh

# TileStache and dependencies
RUN ln -s /usr/lib/x86_64-linux-gnu/libz.so /usr/lib
RUN pip install -U Pillow modestmaps simplejson werkzeug mapbox-vector-tile shapely numpy
RUN mkdir -p /etc/tilestache
COPY etc/run_tilestache.py /etc/tilestache/
RUN cd /tmp && curl -L https://github.com/aldoridhoni/TileStache/archive/integration-1.zip -o tilestache.zip \
    && unzip -q tilestache.zip \
    && rm tilestache.zip \
    && cd TileStache-integration-1 \
    && python setup.py install \
    && rm -rf ../Tilestache-integration-1

# Uwsgi
RUN pip install uwsgi && mkdir -p /etc/uwsgi/apps-enabled && mkdir -p /etc/uwsgi/apps-available
COPY etc/uwsgi_tilestache.ini /etc/uwsgi/apps-available/tilestache.ini
RUN ln -s /etc/uwsgi/apps-available/tilestache.ini /etc/uwsgi/apps-enabled/tilestache.ini

# Supervisor
RUN apt-get install -y supervisor
#RUN pip install --upgrade pip
#RUN pip install supervisor
RUN echo_supervisord_conf > /etc/supervisord.conf && printf "[include]\\nfiles = /etc/supervisord/*" >> /etc/supervisord.conf
RUN mkdir -p /etc/supervisord
COPY etc/supervisor_uwsgi.ini /etc/supervisord/uwsgi.ini
COPY etc/supervisor_inet.conf /etc/supervisord/inet.conf
COPY etc/supervisor_nginx.ini /etc/supervisord/nginx.conf

# Nginx
#RUN add-apt-repository -y ppa:nginx/stable \
RUN apt-get update \
  && apt-get install -y nginx \
  && apt-get clean autoclean \
  && apt-get autoremove -y
COPY etc/nginx_site.conf /etc/nginx/sites-available/site.conf
RUN ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/
RUN rm /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80 9001

#ENV HOST_IP `ifconfig | grep inet | grep Mask:255.255.255.0 | cut -d ' ' -f 12 | cut -d ':' -f 2`
ENV HOST_IP `ifconfig | grep inet | grep Mask:255.255.0.0 | cut -d ' ' -f 12 | cut -d ':' -f 2`

#CMD ["supervisord", "-n"]

# Ajout de l utilisateur fred
RUN useradd --create-home --shell /bin/bash fred
# RUN adduser --disabled-password --gecos '' fred
RUN echo 'fred:fred' | chpasswd
RUN adduser fred sudo
RUN chown -R fred:fred /home/fred
WORKDIR /home/fred
USER fred
# WORKDIR /home/fred
