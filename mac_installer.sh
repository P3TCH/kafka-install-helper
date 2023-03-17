#!/bin/bash
printf "Checking Homebrew...\n"

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
	printf "\n##### You don't have Homebrew, Installing...\n"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	printf "\n##### Homebrew has installed. Updating...\n"
    brew update
fi
printf "\n##### Installing openJDK\n"
brew install openjdk
printf "\n##### Installing kafka...\n"
brew install kafka
printf "\n##### Configuring kafka...\n"
curl https://raw.githubusercontent.com/P3TCH/kafka-install-helper/main/mac-config/server.properties -o /opt/homebrew/Cellar/kafka/3.4.0/libexec/config/server.properties
printf "\n##### Starting kafka service...\n"
brew services start kafka
printf "\n##### Starting zookeeper service...\n"
brew services start zookeeper

printf "\n\n##### kafka config location is : /opt/homebrew/Cellar/kafka/3.4.0/libexec/config\n"
printf "##### zookeeper config location is : /opt/homebrew/Cellar/zookeeper/3.8.1/libexec/zookeeper-contrib/zookeeper-contrib-zkpython/src/test"

printf "\n\n\n##### Done!, have fun :D #####\n"
printf "##### Script By.P3TCH #####\n\n"
printf "== Commands ==\n"
printf "kafka-topics\nkafka-console-producer\nkafka-console-consumer\n\n\n"
