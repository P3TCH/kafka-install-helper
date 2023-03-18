#!/bin/bash
printf "\n##### Updating apt...\n"
sudo apt update

printf "\n##### Installing java...\n"
sudp apt install default-jre -y
sudo apt install default-jdk -y

printf "\n##### Installing zookeeperd...\n"
sudo apt install zookeeperd -y

printf "\n##### Install kafka...\n"
sudo mkdir /usr/local/kafka && cd /usr/local/kafka
sudo wget https://downloads.apache.org/kafka/3.4.0/kafka_2.13-3.4.0.tgz
sudo tar -xvzf kafka_2.13-3.4.0.tgz --strip 1

#Download setting
sudo curl https://raw.githubusercontent.com/P3TCH/kafka-install-helper/main/ubuntu-config/server.properties -o /usr/local/kafka/config/server.properties

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

if [ -f ~/.bashrc ]; then
	printf "\n##### Using bashrc\n"
	RC_FILE=~/.bashrc
elif [ -f ~/.zshrc ]; then
	printf "\n##### Using zshrc\n"
	RC_FILE=~/.zshrc
else
	printf "\n##### Fail to detect\n"
	RC_FILE=~/.bashrc
fi

sudo echo "alias kafka-topics='/home/kafka/kafka/bin/kafka-topics.sh'" >> $RC_FILE
sudo echo "alias kafka-console-producer='/home/kafka/kafka/bin/kafka-console-producer.sh'" >> $RC_FILE
sudo echo "alias kafka-console-consumer='/home/kafka/kafka/bin/kafka-console-consumer.sh'" >> $RC_FILE
sudo echo "alias kafka-server-start='/home/kafka/kafka/bin/kafka-server-start.sh'" >> $RC_FILE
sudo echo "alias kafka-server-stop='/home/kafka/kafka/bin/kafka-server-stop.sh'" >> $RC_FILE
sudo echo "alias kafka-consumer-groups='/home/kafka/kafka/bin/kafka-consumer-groups.sh'" >> $RC_FILE
sudo echo "alias kafka-configs='/home/kafka/kafka/bin/kafka-configs.sh'" >> $RC_FILE
sudo echo "alias kafka-acls='/home/kafka/kafka/bin/kafka-acls.sh'" >> $RC_FILE
sudo echo "alias kafka-reassign-partitions='/home/kafka/kafka/bin/kafka-reassign-partitions.sh'" >> $RC_FILE
sudo echo "alias kafka-preferred-replica-election='/home/kafka/kafka/bin/kafka-preferred-replica-election.sh'" >> $RC_FILE
sudo echo "alias kafka-log-dirs='/home/kafka/kafka/bin/kafka-log-dirs.sh'" >> $RC_FILE
sudo echo "alias kafka-mirror-maker='/home/kafka/kafka/bin/kafka-mirror-maker.sh'" >> $RC_FILE
sudo echo "alias kafka-replay-log-producer='/home/kafka/kafka/bin/kafka-replay-log-producer.sh'" >> $RC_FILE
sudo echo "alias kafka-replay-log-consumer='/home/kafka/kafka/bin/kafka-replay-log-consumer.sh'" >> $RC_FILE
sudo echo "alias zookeeper-server-start='/home/kafka/kafka/bin/zookeeper-server-start.sh'" >> $RC_FILE
sudo echo "alias zookeeper-server-stop='/home/kafka/kafka/bin/zookeeper-server-stop.sh'" >> $RC_FILE

source $RC_FILE

if [ -f ~/.bashrc ]; then
	bash
elif [ -f ~/.zshrc ]; then
	zsh
else
	bash
fi

printf "\n\n\n##### Done!, have fun :D #####\n"
printf "##### Script By.P3TCH #####\n\n"
printf "== Commands ==\n"
printf "kafka-topics\nkafka-console-producer\nkafka-console-consumer\n\n\n"
#printf "\n##### Creating topic...\n"
#bin/kafka-topics.sh --create --topic test --bootstrap-server localhost:9092

#printf "\n##### Listing topics...\n"
#bin/kafka-topics.sh --list --bootstrap-server localhost:9092

#printf "\n##### Starting producer...\n"
#bin/kafka-console-producer.sh --topic test --bootstrap-server localhost:9092

#printf "\n##### Starting consumer...\n"
#bin/kafka-console-consumer.sh --topic test --from-beginning --bootstrap-server localhost:9092

#printf "\n##### Done!\n"

