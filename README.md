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
### Windows
Open Powershell and run this command.
```shell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop update
scoop install kafka
```
##
# Command to use kafka
*Can use this command to run (Added path :D)
```shell
kafka-topics
kafka-console-producer
kafka-console-consumer
```
### Example command
```shell
#sports_news is example name
kafka-topics --list --topic sports_news --bootstrap-server localhost:9092
kafka-topics --describe --topic sports_news --bootstrap-server localhost:9092
kafka-console-producer --topic sports_news --bootstrap-server localhost:9092
kafka-console-consumer --topic sports_news --bootstrap-server localhost:9092
```
