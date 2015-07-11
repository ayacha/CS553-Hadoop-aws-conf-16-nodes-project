#!/bin/bash
sudo apt-get update > /dev/null
sudo apt-get install --yes default-jdk > /dev/null 2>&1
sudo sed -i '1d' /etc/hosts
echo "$1 $2" | sudo tee -a /etc/hosts
sudo hostname $2

echo "export HADOOP_CONF=/home/ubuntu/hadoop/conf" | sudo tee -a /home/ubuntu/.bashrc
echo "export HADOOP_PREFIX=/home/ubuntu/hadoop" | sudo tee -a /home/ubuntu/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" | sudo tee -a /home/ubuntu/.bashrc
echo 'export PATH=$PATH:$HADOOP_PREFIX/bin' | sudo tee -a /home/ubuntu/.bashrc
source ~/.bashrc

wget http://apache.mirror.gtcomm.net/hadoop/common/hadoop-1.2.1/hadoop-1.2.1.tar.gz > /dev/null
tar -xzf hadoop-1.2.1.tar.gz
mv hadoop-1.2.1 hadoop

mkdir hdfstmp
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" | sudo tee -a /home/ubuntu/hadoop/conf/hadoop-env.sh
sudo sed -i '/configuration/d' /home/ubuntu/hadoop/conf/core-site.xml
echo "<configuration><property><name>fs.default.name</name><value>hdfs://ec2-54-69-182-60.us-west-2.compute.amazonaws.com:8020</value></property><property><name>hadoop.tmp.dir</name><value>/home/ubuntu/hdfstmp</value></property></configuration>" | sudo tee -a /home/ubuntu/hadoop/conf/core-site.xml
sudo sed -i '/configuration/d' /home/ubuntu/hadoop/conf/hdfs-site.xml
echo "<configuration><property><name>dfs.replication</name><value>15</value></property><property><name>dfs.permissions</name><value>false</value></property></configuration>" | sudo tee -a /home/ubuntu/hadoop/conf/hdfs-site.xml
sudo sed -i '/configuration/d' /home/ubuntu/hadoop/conf/mapred-site.xml
echo "<configuration><property><name>mapred.job.tracker</name><value>hdfs://ec2-54-69-182-60.us-west-2.compute.amazonaws.com:8021</value></property></configuration>" | sudo tee -a /home/ubuntu/hadoop/conf/mapred-site.xml

sudo sed -i '/localhost/d' /home/ubuntu/hadoop/conf/masters
sudo sed -i '/localhost/d' /home/ubuntu/hadoop/conf/slaves
echo "$2" | sudo tee -a /home/ubuntu/hadoop/conf/slaves