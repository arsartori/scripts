# Comandos Linux
### Create user with uid
	sudo useradd -m -d /home/usuario1 -U -s /bin/bash -u 1010 usuario1 && sudo usermod -aG sudo usuario1 && sudo passwd usuario1
	ssh usuario1@10.1.1.9
	sudo userdel -r fgcadm
	sudo useradd -m -d /home/usuario -U -s /bin/bash -u 1000 usuario && sudo usermod -aG sudo usuario && sudo passwd usuario
	ssh usuario@10.1.1.9
	sudo userdel -r usuario1

### Change hostname
	sudo hostnamectl set-hostname zabbix
	sudo vi /etc/hosts
	sudo reboot

### Kill user connect
	who -u
	echo "Your session will be terminated in 2 minutes for maintenance." | write stacy pts/0 
	sudo pkill -HUP -u stacy
