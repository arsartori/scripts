#!/bin/sh
echo "Update, remove and install packages"
sudo apt update && sudo apt remove -y docker docker-engine docker.io
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
echo "Download gpg"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add
echo "Add Docker repository"
sudo sh -c ' echo "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker-ce.list'
echo "Install Docker"
sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io
echo "Add current user to docker group"
sudo usermod -aG docker ${USER}
