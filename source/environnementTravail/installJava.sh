#!/bin/sh



# installation de java
###############################################
# installation de java
echo "# Installation de java version openjdk 7"
echo "###############################################"
echo "#"
echo "# Installation de java (jre)"
echo "sudo aptitude install openjdk-7-jre"
      sudo aptitude install openjdk-7-jre
echo "#"
echo "# declaration de la variable JAVA_HOME"
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
echo "# et que les derniers programmes sont compilés avec la verison 8"
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
echo "# configuration des alternatives"
#echo "sudo update-alternatives --config java"
#      sudo update-alternatives --config java
echo "#"
echo "# declaration de la variable JAVA_HOME"
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
echo "# Installation de Tomcat 8"
echo "#"
echo "# http://docs.geoserver.org/latest/en/user/installation/war.html"
echo "#"
echo "sudo aptitude install tomcat8"
      sudo aptitude install tomcat8
echo "#"
echo "sudo aptitude install tomcat8-admin"
      sudo aptitude install tomcat8-admin
echo "#"
echo "sudo aptitude install tomcat8-user"
      sudo aptitude install tomcat8-user
echo "#"
echo "#sudo aptitude install tomcat8-examples"
      #sudo aptitude install tomcat8-examples
echo "#"
echo "#sudo aptitude install tomcat8-docs"
      #sudo aptitude install tomcat8-docs
echo "#"
echo "# Ajout des roles admini-gui et manager-gui"
echo "#"
echo "# vi /var/lib/tomcat8/conf/tomcat-users.xml"
echo "#"
echo "<tomcat-users>"
echo '  <role rolename="admin-gui"/>'
echo '  <role rolename="manager-gui"/>'
echo '  <role rolename="profil-01"/>'
echo '  <user username="fred" password="secret" roles="admin-gui,manager-gui"/>'
echo '  <user username="geoserver" password="geoserver" roles="profil-01"/>'
echo "</tomcat-users>"
echo "#"
echo "#"
echo "# sudo service tomcat8 restart"
echo "#"

echo ""
