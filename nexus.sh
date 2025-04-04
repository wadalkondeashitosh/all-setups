#create amazonlinux ec2 with t2.micro and 30 gb of ebs with port 8081 
sudo yum update -y
sudo yum install wget -y
sudo yum install java-1.8.0-openjdk.x86_64 -y
sudo mkdir /app && cd /app
wget https://download.sonatype.com/nexus/3/nexus-unix-x86-64-3.79.0-09.tar.gz\
tar -zxvf nexus-unix-x86-64-3.79.0-09.tar.gz
yum install java-17-amazon-corretto -y
sudo useradd nexus
chown -R  nexus:nexus  nexus-3.79.0-09
sudo sh nexus-3.79.0-09/bin/nexus start
