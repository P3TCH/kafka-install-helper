#!/bin/bash
printf "\n##### Updating apt...\n"
sudo apt update

printf "\n##### Installing java...\n"
sudp apt install default-jre -y
sudo apt install default-jdk -y

printf "\n##### Installing zookeeperd...\n"
sudo apt install zookeeperd -y

printf "\n##### Install kafka...\n"
sudo apt install wget -y
sudo apt install curl -y
mkdir ~/kafka && cd ~/kafka
wget https://downloads.apache.org/kafka/3.4.0/kafka_2.13-3.4.0.tgz
tar -xvzf kafka_2.13-3.4.0.tgz --strip 1

#Download setting
curl https://raw.githubusercontent.com/P3TCH/kafka-install-helper/main/ubuntu-config/server.properties -o ~/kafka/config/server.properties

#Create services
sudo curl https://raw.githubusercontent.com/P3TCH/kafka-install-helper/main/ubuntu-config/zookeeper.service -o /etc/systemd/system/zookeeper.service
sudo curl https://raw.githubusercontent.com/P3TCH/kafka-install-helper/main/ubuntu-config/kafka.service -o /etc/systemd/system/kafka.service

printf "\n##### Starting service...\n"
sudo systemctl daemon-reload
sudo systemctl start zookeeper
sudo systemctl start kafka
sudo systemctl enable zookeeper
sudo systemctl enable kafka

printf "\n##### Setting command...\n"
sudo echo "alias kafka-topics='~/kafka/bin/kafka-topics.sh'" >> ~/.bashrc
sudo echo "alias kafka-console-producer='~/kafka/bin/kafka-console-producer.sh'" >> ~/.bashrc
sudo echo "alias kafka-console-consumer='~/kafka/bin/kafka-console-consumer.sh'" >> ~/.bashrc
sudo echo "alias kafka-server-start='~/kafka/bin/kafka-server-start.sh'" >> ~/.bashrc
sudo echo "alias kafka-server-stop='~/kafka/bin/kafka-server-stop.sh'" >> ~/.bashrc
sudo echo "alias kafka-consumer-groups='~/kafka/bin/kafka-consumer-groups.sh'" >> ~/.bashrc
sudo echo "alias kafka-configs='~/kafka/bin/kafka-configs.sh'" >> ~/.bashrc
sudo echo "alias kafka-acls='~/kafka/bin/kafka-acls.sh'" >> ~/.bashrc
sudo echo "alias kafka-reassign-partitions='~/kafka/bin/kafka-reassign-partitions.sh'" >> ~/.bashrc
sudo echo "alias kafka-preferred-replica-election='~/kafka/bin/kafka-preferred-replica-election.sh'" >> ~/.bashrc
sudo echo "alias kafka-log-dirs='~/kafka/bin/kafka-log-dirs.sh'" >> ~/.bashrc
sudo echo "alias zookeeper-server-start='~/kafka/bin/zookeeper-server-start.sh'" >> ~/.bashrc
sudo echo "alias zookeeper-server-stop='~/kafka/bin/zookeeper-server-stop.sh'" >> ~/.bashrc

printf "\n##### Done!\n"

source ~./bashrc

#printf "\n##### Creating topic...\n"
#bin/kafka-topics.sh --create --topic test --bootstrap-server localhost:9092

#printf "\n##### Listing topics...\n"
#bin/kafka-topics.sh --list --bootstrap-server localhost:9092

#printf "\n##### Starting producer...\n"
#bin/kafka-console-producer.sh --topic test --bootstrap-server localhost:9092

#printf "\n##### Starting consumer...\n"
#bin/kafka-console-consumer.sh --topic test --from-beginning --bootstrap-server localhost:9092

#printf "\n##### Done!\n"

