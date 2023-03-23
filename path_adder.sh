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

sudo echo "alias kafka-topics='/usr/local/kafka/bin/kafka-topics.sh'" >> $RC_FILE
sudo echo "alias kafka-console-producer='/usr/local/kafka/bin/kafka-console-producer.sh'" >> $RC_FILE
sudo echo "alias kafka-console-consumer='/usr/local/kafka/bin/kafka-console-consumer.sh'" >> $RC_FILE
sudo echo "alias kafka-server-start='/usr/local/kafka/bin/kafka-server-start.sh'" >> $RC_FILE
sudo echo "alias kafka-server-stop='/usr/local/kafka/bin/kafka-server-stop.sh'" >> $RC_FILE
sudo echo "alias kafka-consumer-groups='/usr/local/kafka/bin/kafka-consumer-groups.sh'" >> $RC_FILE
sudo echo "alias kafka-configs='/usr/local/kafka/bin/kafka-configs.sh'" >> $RC_FILE
sudo echo "alias kafka-acls='/usr/local/kafka/bin/kafka-acls.sh'" >> $RC_FILE
sudo echo "alias kafka-reassign-partitions='/usr/local/kafka/bin/kafka-reassign-partitions.sh'" >> $RC_FILE
sudo echo "alias kafka-preferred-replica-election='/usr/local/kafka/bin/kafka-preferred-replica-election.sh'" >> $RC_FILE
sudo echo "alias kafka-log-dirs='/usr/local/kafka/bin/kafka-log-dirs.sh'" >> $RC_FILE
sudo echo "alias kafka-mirror-maker='/usr/local/kafka/bin/kafka-mirror-maker.sh'" >> $RC_FILE
sudo echo "alias kafka-replay-log-producer='/usr/local/kafka/bin/kafka-replay-log-producer.sh'" >> $RC_FILE
sudo echo "alias kafka-replay-log-consumer='/usr/local/kafka/bin/kafka-replay-log-consumer.sh'" >> $RC_FILE
sudo echo "alias zookeeper-server-start='/usr/local/kafka/bin/zookeeper-server-start.sh'" >> $RC_FILE
sudo echo "alias zookeeper-server-stop='/usr/local/kafka/bin/zookeeper-server-stop.sh'" >> $RC_FILE
sudo echo "alias startkafka='sudo /usr/local/kafka/bin/kafka-server-start.sh /usr/local/kafka/config/server.properties'" >> $RC_FILE
sudo echo "alias stopkafka='sudo /usr/local/kafka/bin/kafka-server-stop.sh'" >> $RC_FILE

source $RC_FILE

if [ -f ~/.bashrc ]; then
	bash
elif [ -f ~/.zshrc ]; then
	zsh
else
	bash
fi
