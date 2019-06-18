
# Installation d'un serveur dns crypté

## 1. Introduction
la doc est ici
https://github.com/jedisct1/dnscrypt-proxy/wiki/How-to-setup-your-own-DNSCrypt-server-in-less-than-10-minutes

## 2. Installation de docker sur vps192940

https://docs.docker.com/install/linux/docker-ce/debian/

sudo docker run hello-world

sudo adduser fred docker

## 3. Creation et lancement du serveur
https://github.com/jedisct1/dnscrypt-proxy/wiki/How-to-setup-your-own-DNSCrypt-server-in-less-than-10-minutes

### 3.1. Creation du serveur
-N cdalr.fr = nom
149.202.43.81 = adresse ip de cdalr.fr

docker run --ulimit nofile=90000:90000 --name=dnscrypt-server -p 443:443/udp -p 443:443/tcp --net=host \
jedisct1/dnscrypt-server init -N cdalr.fr -E 149.202.43.81:443

### 3.2. Lancement du serveur

docker start dnscrypt-server

If you want to make it start automatically after the server reboots, just type:

docker update --restart=unless-stopped dnscrypt-server

## 4. Coté client, installation de dnscrypt-proxy
https://github.com/jedisct1/dnscrypt-proxy/wiki/Installation-on-Debian-and-Ubuntu


### 4.1. Install
pour debian
sudo apt update && \
sudo apt install -t testing dnscrypt-proxy

pour ubuntu
sudo apt install dnscrypt-proxy

### 4.2. Configuration

#### 4.2.1. dnscrypt-proxy.toml

Configure dnscrypt-proxy.toml

cd /etc/dnscrypt-proxy
sudo cp dnscrypt-proxy.toml dnscrypt-proxy.toml.original

In dnscrypt-proxy.toml, replace listen_addresses = ['127.0.0.1:53'] with listen_addresses = []

#### 4.2.2. resolv.conf
Configure resolv.conf
Using the command line

This is just one way to get the nameserver persistently added to resolv.conf.

Create a file resolv.conf.override as below. Match the permissions and owner. Here, 127.0.0.1 comes from listen_addresses in dnscrypt-proxy.toml.

$ cd /etc
$ ll resolv.conf.override
-rwxrwxrwx 1 root root 172 Jun 26 20:38 resolv.conf.override*
$ cat resolv.conf.override
nameserver 127.0.0.1

Create a script 20-resolv-conf-override as below. Match the permissions and owner.

$ cd /etc/NetworkManager/dispatcher.d
$ ll 20-resolv-conf-override
-rwxr-xr-x 1 root root 101 Jun 26 20:45 20-resolv-conf-override*
$ cat 20-resolv-conf-override
#!/bin/sh
cp -f /etc/resolv.conf.override /run/resolvconf/resolv.conf
$ sudo ln -f 20-resolv-conf-override ./pre-up.d/

#### 4.2.3. redemarrage des services
Start services

If the PPA installer was used, restart the services:

sudo systemctl restart NetworkManager
sudo systemctl restart dnscrypt-proxy

The older commands for the same are:

sudo service network-manager restart
sudo service dnscrypt-proxy restart


