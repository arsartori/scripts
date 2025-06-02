# MariaDB

### Criar pasta para os bancos de dados e arquivos de configuração
	mkdir -p /opt/docker/mariadb/{db,conf}
### Copia o arquivo "docker-compose.yaml" para a pasta do MariaDB
	cp docker-compose.yaml /opt/docker/
### Executar o container
	cd /opt/docker
	docker compose up -d
### Para acessar a console do MariaDB
	mariadb -u root -p<senha>
### Para acessar aconsole do container
	docker exec -it mariadb sh
### Para criar um banco de dados
	CREATE DATABASE teste;
	CREATE DATABASE teste CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';
### Para adicionar um usuário
	GRANT ALL ON teste.* TO 'teste'@'%' IDENTIFIED BY 'teste';
### Para adicionar um super usuário
	GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'Passw0rd' WITH GRANT OPTION;
### Para alterar a senha do usuário
	ALTER USER 'usuario'@'%' identified by 'nova senha';
### Para renomear o usuário
	RENAME USER 'usuario' to 'novo-usuario'@'%';
### Remover usuários, tables ou banco de dados
	DROP USER usuario@localhost;
	DROP TABLE tabela;
	DROP DATABASE database;
### Para fazer backup
	mysqldump -u root -p > backup.sql
	mysqldump -u root -p --all-databases --single-transaction --lock-tables=false | gzip > /backup/backup-$(date +%Y%m%d).sql.gz
	mysqldump -u root -p --single-transaction --add-drop-database --databases <banco> | gzip > /tmp/backup.sql.gz
	mysqldump -u USERNAME -p --all-databases --events --ignore-table=mysql.event --extended-insert --add-drop-database --disable-keys --flush-privileges --quick --routines --triggers | gzip > "all_databases.gz"
### Para fazer restore
	gunzip < backup.sql.gz | mariadb -u root -p <banco de dados>
### Para listar os bancos de dados ou tabelas
	show databases;
	show tables;
### Para exibir conexões e processos
	show status;
	show status where variable_name = 'threads_connected';
	show processlist;
### Para ajustar variaveis
	show variables like 'max_allowed_packet';
	set global max_allowed_packet=1072731894;
### Para configurar a segurança do MariaDB
	mysql_secure_installation;

# Instalar MariaDB 10.6.18 no host

### Instalar pacotes necessários e importar as chaves
	sudo apt-get install apt-transport-https curl
	sudo mkdir -p /etc/apt/keyrings
	sudo curl -o /etc/apt/keyrings/mariadb-keyring.pgp 'https://mariadb.org/mariadb_release_signing_key.pgp'
### Criar o arquivo /etc/apt/sources.list.d/mariadb.sources
	# MariaDB 10.6 repository list - created 2024-07-23 00:15 UTC
	# https://mariadb.org/download/
	X-Repolib-Name: MariaDB
	Types: deb
	# deb.mariadb.org is a dynamic mirror if your preferred mirror goes offline. See https://mariadb.org/mirrorbits/ for details.
	# URIs: https://deb.mariadb.org/10.6/ubuntu
	URIs: https://mirrors.xtom.com/mariadb/repo/10.6/ubuntu
	Suites: jammy
	Components: main main/debug
	Signed-By: /etc/apt/keyrings/mariadb-keyring.pgp
### Instalar MariaDB
	sudo apt-get update
	sudo apt-get install mariadb-server


# Fazendo backup dos databases
### Crie um arquivo de script (/root/scripts/backupdb.sh), com permissão 750, e adicione as seguintes linhas:
	#!/bin/bash

	BACKUPDIR="/backup/databases/"
	DATE=`date +%s`

	if [ ! -e $BACKUPDIR ]; then
		mkdir -p $BACKUPDIR
		chmod 700 $BACKUPDIR
	fi

	for x in `mysqlshow | grep -v \_schema | awk -F "| " '{print $2}'`; do mysqldump $x | bzip2 -9czq > $BACKUPDIR$x-sql-$DATE.bz2; done

	/usr/bin/find $BACKUPDIR ! -mtime -3|/usr/bin/xargs rm -f
	chmod 600 $BACKUPDIR/*
### Adicione no crontab a seguinte entrada
	0 */8 * * * /root/scripts/backupdb.sh >/dev/null 2>&1
