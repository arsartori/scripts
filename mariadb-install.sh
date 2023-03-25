#!/bin/bash
sudo apt install apt-transport-https curl
sudo curl -o /etc/apt/trusted.gpg.d/mariadb_release_signing_key.asc 'https://mariadb.org/mariadb_release_signing_key.asc'
sudo sc -c "echo 'deb https://espejito.fder.edu.uy.mariadb/repo/10.3/ubuntu bionic main' >> /etc/apt/sources.list"
sudo apt update && sudo apt install mariadb-server
