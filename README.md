# Kafka and Zookeeper install helper
This project for helping install kafka and Zookeeper for my classmates :D  
  
![visitor badge](https://visitor-badge.glitch.me/badge?page_id=petch-kafka-installer.visitor-badge)

# How to install
### <code><img height="20" src="https://cdn-icons-png.flaticon.com/512/2/2235.png"></code> MacOS
Open terminal and run this command.
```shell
curl https://raw.githubusercontent.com/P3TCH/kafka-install-helper/main/mac_installer.sh -o ~/mac_kafka_installer.sh && bash ~/mac_kafka_installer.sh
```
##
### <code><img height="20" src="https://www.xilinx.com/content/xilinx/en/products/design-tools/embedded-software/ubuntu/_jcr_content/root/parsysFullWidth/xilinxflexibleslab/xilinxflexibleslab-parsys/xilinxcolumns_149128/childParsys-2/xilinximage.img.png/1629757312962.png"></code> Ubuntu
Open terminal and run this command.
```shell
sudo apt update && sudo apt install -y curl wget && curl https://raw.githubusercontent.com/P3TCH/kafka-install-helper/main/ubuntu_installer.sh -o ~/ubuntu_kafka_installer.sh && bash ~/ubuntu_kafka_installer.sh
```
##
### <code><img height="20" src="https://winaero.com/blog/wp-content/uploads/2021/06/Windows-11-Win-X-Menu-icon.png"></code> Windows
Open Powershell and run this command.
```shell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop update
scoop bucket add java
scoop install openjdk17
scoop install kafka
scoop install zookeeper
```
##

# How to start, stop Kafka and Zookeeper services
### <code><img height="20" src="https://cdn-icons-png.flaticon.com/512/2/2235.png"></code> MacOS
### Start
```shell
brew services start zookeeper
brew services start kafka
```
### Stop
```shell
brew services stop zookeeper
brew services stop kafka
```
##

### <code><img height="20" src="https://www.xilinx.com/content/xilinx/en/products/design-tools/embedded-software/ubuntu/_jcr_content/root/parsysFullWidth/xilinxflexibleslab/xilinxflexibleslab-parsys/xilinxcolumns_149128/childParsys-2/xilinximage.img.png/1629757312962.png"></code> Ubuntu
### Start
```shell
sudo systemctl start zookeeper
sudo systemctl start kafka
```
### Stop
```shell
sudo systemctl stop zookeeper
sudo systemctl stop kafka
```
##

### <code><img height="20" src="https://winaero.com/blog/wp-content/uploads/2021/06/Windows-11-Win-X-Menu-icon.png"></code> Windows
### Start zookeeper on windows
Open new Powershell  
1.Go to zookeeper location (<your app version> version Enter the version you have installed.)
```shell
cd ~\scoop\apps\zookeeper\ <your app version> \bin
```
2.Run zookeeper service
```shell
.\zkServer.cmd
```

##
  
### Start kafka on windows
Open new Powershell  
1.Go to kafka location (<your app version> version Enter the version you have installed.)
```shell
cd ~\scoop\apps\kafka\ <your app version> \bin\windows
```
2.Run kafka service
```shell
.\kafka-server-start.bat ~\scoop\apps\kafka\ <your app version> \config\server.properties
```

##
***FOR WINDOWS YOU CAN EDIT KAFKA SETTING IN PATH***
```shell
~\scoop\apps\kafka\ <your app version> \config\server.properties
```
##
  
### Run kafka command on windows
Open new Powershell  
1.Go to kafka location (<your app version> version Enter the version you have installed.)
```shell
cd ~\scoop\apps\kafka\ <your app version> \bin\windows
```

RUN ANY COMMAND WITH .bat
```shell
#Example
.\kafka-topics.bat --create --topic sports_news --bootstrap-server localhost:9092
```
  
##
### Command to use kafka <code><span>(Windows not include)</span></code>
*Can use this command to run (Added path :D)
```shell
kafka-topics
kafka-console-producer
kafka-console-consumer
```
### Example command
```shell
#sports_news is example name
kafka-topics --create --topic sportsnews --bootstrap-server localhost:9092
kafka-topics --list --topic sportsnews --bootstrap-server localhost:9092
kafka-topics --describe --topic sportsnews --bootstrap-server localhost:9092
kafka-console-producer --topic sportsnews --bootstrap-server localhost:9092
kafka-console-consumer --topic sportsnews --bootstrap-server localhost:9092
```
