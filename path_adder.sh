if [ -n "$ZSH_VERSION" ]; then
	# assume Zsh
	printf "\n#### Zsh detected\n"
	RC_FILE=~/.zshrc
elif [ -n "$BASH_VERSION" ]; then
	# assume Bash
	printf "\n#### Bash detected\n"
	RC_FILE=~/.bashrc
fi

sudo echo "alias kafka-topics='~/kafka/bin/kafka-topics.sh'" >> $RC_FILE
sudo echo "alias kafka-console-producer='~/kafka/bin/kafka-console-producer.sh'" >> $RC_FILE
sudo echo "alias kafka-console-consumer='~/kafka/bin/kafka-console-consumer.sh'" >> $RC_FILE
sudo echo "alias kafka-server-start='~/kafka/bin/kafka-server-start.sh'" >> $RC_FILE
sudo echo "alias kafka-server-stop='~/kafka/bin/kafka-server-stop.sh'" >> $RC_FILE
sudo echo "alias kafka-consumer-groups='~/kafka/bin/kafka-consumer-groups.sh'" >> $RC_FILE
sudo echo "alias kafka-configs='~/kafka/bin/kafka-configs.sh'" >> $RC_FILE
sudo echo "alias kafka-acls='~/kafka/bin/kafka-acls.sh'" >> $RC_FILE
sudo echo "alias kafka-reassign-partitions='~/kafka/bin/kafka-reassign-partitions.sh'" >> $RC_FILE
sudo echo "alias kafka-preferred-replica-election='~/kafka/bin/kafka-preferred-replica-election.sh'" >> $RC_FILE
sudo echo "alias kafka-log-dirs='~/kafka/bin/kafka-log-dirs.sh'" >> $RC_FILE
sudo echo "alias kafka-mirror-maker='~/kafka/bin/kafka-mirror-maker.sh'" >> $RC_FILE
sudo echo "alias kafka-replay-log-producer='~/kafka/bin/kafka-replay-log-producer.sh'" >> $RC_FILE
sudo echo "alias kafka-replay-log-consumer='~/kafka/bin/kafka-replay-log-consumer.sh'" >> $RC_FILE
sudo echo "alias zookeeper-server-start='~/kafka/bin/zookeeper-server-start.sh'" >> $RC_FILE
sudo echo "alias zookeeper-server-stop='~/kafka/bin/zookeeper-server-stop.sh'" >> $RC_FILE

source $RC_FILE
