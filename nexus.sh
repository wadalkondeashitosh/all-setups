#create amazonlinux ec2 with t2.micro and 30 gb of ebs with port 8081 
sudo yum update -y
sudo yum install wget -y
sudo yum install java-1.8.0-openjdk.x86_64 -y
sudo yum install java-17-amazon-corretto -y
sudo mkdir /app && cd /app
sudo wget https://download.sonatype.com/nexus/3/nexus-unix-x86-64-3.79.0-09.tar.gz\
tar -zxvf nexus-unix-x86-64-3.79.0-09.tar.gz
rm nexus-unix-x86-64-3.79.0-09.tar.gz 
sudo mv nexus-3.79.0-09 nexus
sudo adduser nexus
sudo chown -R nexus:nexus /app/nexus
sudo chown -R nexus:nexus /app/sonatype-work
sudo vi  /app/nexus/bin/nexus.rc
Uncomment run_as_user parameter and set it as following
run_as_user="nexus"
cat /app/nexus/bin/nexus.rc      -----to check
./nexus/bin/nexus start
./nexus/bin/nexus status
allow security group custom tcp with port 8081 ipv4 anywhere
copy public-ip with port 8081
