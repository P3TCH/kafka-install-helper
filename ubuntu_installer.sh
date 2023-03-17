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

cd ~/kafka/config


printf "\n##### Starting zookeeper...\n"
bin/zookeeper-server-start.sh config/zookeeper.properties &

printf "\n##### Starting kafka...\n"
bin/kafka-server-start.sh config/server.properties &

#printf "\n##### Creating topic...\n"
#bin/kafka-topics.sh --create --topic test --bootstrap-server localhost:9092

#printf "\n##### Listing topics...\n"
#bin/kafka-topics.sh --list --bootstrap-server localhost:9092

#printf "\n##### Starting producer...\n"
#bin/kafka-console-producer.sh --topic test --bootstrap-server localhost:9092

#printf "\n##### Starting consumer...\n"
#bin/kafka-console-consumer.sh --topic test --from-beginning --bootstrap-server localhost:9092

#printf "\n##### Done!\n"

