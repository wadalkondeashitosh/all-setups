sudo yum install git java-1.8.0-openjdk maven -y
sudo yum install java-17-amazon-corretto -y
sudo update-alternatives --config java
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.41/bin/apache-tomcat-10.1.41.tar.gz
tar -zxvf apache-tomcat-10.1.41.tar.gz
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-10.1.41/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-10.1.41/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="Ashu@2612" roles="manager-gui, manager-script"/>' apache-tomcat-10.1.41/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-10.1.41/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-10.1.41/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-10.1.41/webapps/manager/META-INF/context.xml
sed -i '22d' apache-tomcat-10.1.41/webapps/manager/META-INF/context.xml
sh apache-tomcat-10.1.41/bin/startup.sh
