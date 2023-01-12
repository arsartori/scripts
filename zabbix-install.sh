#!/bin/bash
#$VERSION = 'lsb_release -rs'
#if ($VERSION = '18.04') then
wget https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-1%2Bbionic_all.deb
sudo dpkg -i zabbix-release_5.0-1+bionic_all.deb
sudo apt update && sudo apt install zabbix-agent
#
## Ubuntu Server 20.04 LTS
#wget https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-1+focal_all.deb
#sudo dpkg -i zabbix-release_5.0-1+focal_all.deb
#sudo apt update && sudo apt install zabbix-agent
#
## Ubuntu Server 22.04 LTS
#wget https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-2+ubuntu22.04_all.deb
#sudo dpkg -i zabbix-release_5.0-2+ubuntu22.04_all.deb
#sudo apt update && sudo apt install zabbix-agent
