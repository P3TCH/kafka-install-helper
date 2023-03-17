# Kafka and Zookeeper install helper
This project for helping install kafka and Zookeeper for my classmates :D

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
sudo apt update && sudo apt install -y curl wget && curl https://raw.githubusercontent.com/P3TCH/kafka-install-helper/main/ubuntu_installer.sh -o ~/ubuntu_kafka_installer.sh && sudo bash ~/ubuntu_kafka_installer.sh
```

# Command to use kafka
*Can use this command to run (Added path :D)
```shell
kafka-topics
kafka-console-producer
kafka-console-consumer
```
