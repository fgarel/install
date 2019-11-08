#!/bin/sh

# Attention : geoserver ne fonctionne qu'avec Java 8(!) -> 11 (en test?)
# http://docs.geoserver.org/latest/en/user/production/java.html
#
# Pour ne pas a avoir de problème avec la version de Java,
# la solution est de prendre la version indiquée quand on prend la
# version par defaut :
# apt-cache default-jre => openjdk-11-jre
#
# De plus, le fait d'installer le paquet default-jre, cela va
# nous éviter l'utilisation de la variable JAVA_HOME
# ubuntu
export JAVA_VERSION_KO_1='14'
export JAVA_VERSION_KO_2='13'
export JAVA_VERSION_KO_3='12'
export JAVA_VERSION_OK='11'
export TOMCAT_VERSION_KO_1='8'
export TOMCAT_VERSION_OK='9'

# debian
#export JAVA_VERSION_KO_1='11'
#export JAVA_VERSION_KO_2='10'
#export JAVA_VERSION_KO_3='9'
#export JAVA_VERSION_OK='8'
#export TOMCAT_VERSION='8'


# installation de java
###############################################
# installation de java
echo "# Installation de java version openjdk $JAVA_VERSION_OK"
echo "###############################################"
echo "#"
echo "# Installation de java (jre)"
#echo "sudo apt-get remove -y default-jre"
#      sudo apt-get remove -y default-jre
#echo "sudo apt-get remove -y default-jre-headless"
#      sudo apt-get remove -y default-jre-headless
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_1-jre"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_1-jre
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_2-jre"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_2-jre
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_3-jre"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_3-jre
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_1-jre-headless"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_1-jre-headless
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_2-jre-headless"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_2-jre-headless
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_3-jre-headless"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_3-jre-headless
echo "#"
echo "# Installation du jre, du jdk, de maven"
echo "sudo aptitude install -y openjdk-$JAVA_VERSION_OK-jre"
      sudo aptitude install -y openjdk-$JAVA_VERSION_OK-jre
echo "sudo apt-get install -y openjdk-$JAVA_VERSION_OK-jre"
      sudo apt-get install -y openjdk-$JAVA_VERSION_OK-jre
echo "sudo aptitude install -y openjdk-$JAVA_VERSION_OK-jre-headless"
      sudo aptitude install -y openjdk-$JAVA_VERSION_OK-jre-headless
echo "sudo apt-get install -y openjdk-$JAVA_VERSION_OK-jre-headless"
      sudo apt-get install -y openjdk-$JAVA_VERSION_OK-jre-headless
echo "sudo aptitude install -y openjdk-$JAVA_VERSION_OK-jdk"
      sudo aptitude install -y openjdk-$JAVA_VERSION_OK-jdk
echo "sudo apt-get install -y openjdk-$JAVA_VERSION_OK-jdk"
      sudo apt-get install -y openjdk-$JAVA_VERSION_OK-jdk
echo "sudo apt-get install -y maven"
      sudo apt-get install -y maven
echo "#"
#echo "sudo apt-get remove -y default-jre"
#      sudo apt-get remove -y default-jre
#echo "sudo apt-get remove -y default-jre-headless"
#      sudo apt-get remove -y default-jre-headless
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_1-jre"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_1-jre
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_2-jre"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_2-jre
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_3-jre"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_3-jre
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_1-jre-headless"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_1-jre-headless
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_2-jre-headless"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_2-jre-headless
echo "sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_3-jre-headless"
      sudo apt-get remove -y openjdk-$JAVA_VERSION_KO_3-jre-headless

echo "#"
echo "# Declaration de la variable JAVA_HOME"
echo "#"
echo "# 1ère façon de faire : default-jre"
echo "#"
echo "sudo apt-get install -y default-jre"
      sudo apt-get install -y default-jre
echo "#"
echo "# 2de facon de faire : variable dans /etc/environnement"
echo "#"
echo "# http://serverfault.com/questions/143786/how-to-determine-java-home-on-debian-ubuntu"
echo "# http://stackoverflow.com/questions/84882/sudo-echo-something-etc-privilegedfile-doesnt-work-is-there-an-alterna"
echo "#"
echo '#echo "JAVA_HOME="$(readlink -f /usr/bin/java | sed "s:bin/java::") | sudo tee --append /etc/environment'
      #echo "JAVA_HOME="$(readlink -f /usr/bin/java | sed "s:bin/java::") | sudo tee --append /etc/environment
echo "# -------------------------------"
echo "source /etc/environment"
echo "# -------------------------------"
echo "#"
echo "#"
echo "# Le problème de l'installation de openjdk, c'est que l'on a la version 7"
echo "# et que les derniers programmes sont compilés avec la version 8"
echo "# Par exemple, quand on cherche à executer geogig, on optient l'erreur suivante"
echo "# Unsupported major.minor version 52.0"
echo "# la doc sur cette erreur est ici :"
echo "# http://javarevisited.blogspot.fr/2015/05/fixing-unsupported-majorminor-version.html"
echo "#"
echo "# La solution est donc d'installer java 8"
echo "# et pour cela, on suit les infos de cette page"
echo "# https://wiki.debian.org/JavaPackage"
echo "#"
echo "#"
echo "# Installation de Java 8, la version oracle"
echo "###############################################"
echo "#"
echo "# https://wiki.debian.org/JavaPackage"
echo "#"
echo "# Add a "contrib" component to /etc/apt/sources.list, for example: "
echo '#echo "deb http://httpredir.debian.org/debian/ jessie main contrib" | sudo tee --append /etc/apt/sources.list'
      #echo "deb http://httpredir.debian.org/debian/ jessie main contrib" | sudo tee --append /etc/apt/sources.list
echo "#"
echo "# Update the list of available packages and install the java-package package: "
#echo "sudo aptitude update"
#      sudo aptitude update
#echo "sudo aptitude install java-package"
#      sudo aptitude install java-package
echo "#"
echo "# Download the desired Java JDK/JRE binary distribution (Oracle). Choose tar.gz archives or self-extracting archives, do not choose the RPM! "
echo "# http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html"
echo "#wget http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jre-8u121-linux-x64.tar.gz \ "
echo "#     -O jre-8u121-linux-x64.tar.gz"
      #wget http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jre-8u121-linux-x64.tar.gz \
      #     -O jre-8u121-linux-x64.tar.gz
echo "#"
echo "# Use Javava-package to create a Debian package, for example: "
#echo "make-jpkg jdk-8u51-linux-x64.tar.gz"
#      make-jpkg jre-8u121-linux-x64.tar.gz
echo "#"
echo "# Install the binary package created: "
echo "#"
#echo "sudo dpkg -i oracle-java8-jre_8u121_amd64.deb"
#      sudo dpkg -i oracle-java8-jre_8u121_amd64.deb
echo "#"
echo "# Configuration des alternatives"
#echo "sudo update-alternatives --config java"
#      sudo update-alternatives --config java
echo "#"
echo "# Declaration de la variable JAVA_HOME"
echo "#"
echo "# http://serverfault.com/questions/143786/how-to-determine-java-home-on-debian-ubuntu"
echo "# http://stackoverflow.com/questions/84882/sudo-echo-something-etc-privilegedfile-doesnt-work-is-there-an-alterna"
echo "#"
#echo 'echo "JAVA_HOME="$(readlink -f /usr/bin/java | sed "s:bin/java::") | sudo tee --append /etc/environment'
#      echo "JAVA_HOME="$(readlink -f /usr/bin/java | sed "s:bin/java::") | sudo tee --append /etc/environment
echo "#"
echo "# -------------------------------"
echo "source /etc/environment"
echo 'echo $JAVA_HOME'
echo "# -------------------------------"
echo "#"
echo "# #######################"
echo "# Installation de Tomcat $TOMCAT_VERSION_OK"
echo "# ##########################"
echo "#"

echo "sudo apt-get remove -y tomcat$TOMCAT_VERSION_KO_1"
      sudo apt-get remove -y tomcat$TOMCAT_VERSION_KO_1
echo "sudo apt-get remove -y tomcat$TOMCAT_VERSION_KO_1-admin"
      sudo apt-get remove -y tomcat$TOMCAT_VERSION_KO_1-admin
echo "sudo apt-get remove -y tomcat$TOMCAT_VERSION_KO_1-user"
      sudo apt-get remove -y tomcat$TOMCAT_VERSION_KO_1-user

echo "# http://docs.geoserver.org/latest/en/user/installation/war.html"
echo "#"
echo "sudo aptitude install -y tomcat$TOMCAT_VERSION_OK"
      sudo aptitude install -y tomcat$TOMCAT_VERSION_OK
echo "sudo apt-get install -y tomcat$TOMCAT_VERSION_OK"
      sudo apt-get install -y tomcat$TOMCAT_VERSION_OK
echo "#"
echo "sudo aptitude install -y tomcat$TOMCAT_VERSION_OK-admin"
      sudo aptitude install -y tomcat$TOMCAT_VERSION_OK-admin
echo "sudo apt-get install -y tomcat$TOMCAT_VERSION_OK-admin"
      sudo apt-get install -y tomcat$TOMCAT_VERSION_OK-admin
echo "#"
echo "sudo aptitude install -y tomcat$TOMCAT_VERSION_OK-user"
      sudo aptitude install -y tomcat$TOMCAT_VERSION_OK-user
echo "sudo apt-get install -y tomcat$TOMCAT_VERSION_OK-user"
      sudo apt-get install -y tomcat$TOMCAT_VERSION_OK-user
echo "#"
echo "sudo aptitude install -y tomcat$TOMCAT_VERSION_OK-examples"
      sudo aptitude install -y tomcat$TOMCAT_VERSION_OK-examples
echo "sudo apt-get install -y tomcat$TOMCAT_VERSION_OK-examples"
      sudo apt-get install -y tomcat$TOMCAT_VERSION_OK-examples
echo "#"
echo "sudo aptitude install -y tomcat$TOMCAT_VERSION_OK-docs"
      sudo aptitude install -y tomcat$TOMCAT_VERSION_OK-docs
echo "sudo apt-get install -y tomcat$TOMCAT_VERSION_OK-docs"
      sudo apt-get install -y tomcat$TOMCAT_VERSION_OK-docs
echo "#"
echo "# -----------------------------------------------"
echo "# Ajout des roles admin-gui et manager-gui"
echo "#"
echo "# Attention il faut etre super-utilisateur pour pouvoir modifier"
echo "# ce fichier de configuration"
echo "#"
echo "# sudo su"
echo "# vi /var/lib/tomcat$TOMCAT_VERSION_OK/conf/tomcat-users.xml"
echo "#"
echo "<tomcat-users>"
echo '  <role rolename="admin-gui"/>'
echo '  <role rolename="admin-script"/>'
echo '  <role rolename="manager-gui"/>'
echo '  <role rolename="manager-script"/>'
echo '  <role rolename="profil-01"/>'
echo '  <user username="fred" password="secret" roles="admin-gui,manager-gui"/>'
echo '  <user username="admin" password="secret" roles="admin-script,manager-script"/>'
echo '  <user username="geoserver" password="geoserver" roles="profil-01"/>'
echo "</tomcat-users>"
echo "#"
echo "sudo chown root:root tomcat-users.xml"
      sudo chown root:root tomcat-users.xml
echo "sudo cp -f tomcat-users.xml /var/lib/tomcat$TOMCAT_VERSION_OK/conf/tomcat-users.xml"
      sudo cp -f tomcat-users.xml /var/lib/tomcat$TOMCAT_VERSION_OK/conf/tomcat-users.xml
echo "sudo chown fred:fred tomcat-users.xml"
      sudo chown fred:fred tomcat-users.xml
echo "# -----------------------------------------------"
echo "# Autorisation des connexions distantes"
echo "#"
echo "# Attention il faut etre super-utilisateur pour pouvoir modifier"
echo "# ce fichier de configuration"
echo "#"
echo "# la doc est ici : "
echo "# https://www.digitalocean.com/community/questions/how-to-access-tomcat-8-admin-gui-from-different-host"
echo "#"
echo "# sudo su"
echo "# vi /usr/share/tomcat$TOMCAT_VERSION_OK-admin/manager/META-INF/context.xml"
echo "#"
echo "# il faut commenter les deux lignes centrales"
echo ""
echo "<Context antiResourceLocking="false" privileged="true" >"
echo '  <!--<Valve className="org.apache.catalina.valves.RemoteAddrValve"'
echo '         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />-->'
echo "</Context>"
echo "#"
echo "sudo chown root:root context.xml"
      sudo chown root:root context.xml
echo "sudo cp -f context.xml /usr/share/tomcat$TOMCAT_VERSION_OK-admin/manager/META-INF/context.xml"
      sudo cp -f context.xml /usr/share/tomcat$TOMCAT_VERSION_OK-admin/manager/META-INF/context.xml
echo "sudo chown fred:fred context.xml"
      sudo chown fred:fred context.xml
echo "# -----------------------------------------------"
echo "#"
echo "# sudo service tomcat$TOMCAT_VERSION_OK restart"
echo "sudo service tomcat$TOMCAT_VERSION_OK restart"
      sudo service tomcat$TOMCAT_VERSION_OK restart
echo "#"

echo ""
