# Docker
 
### Atualizar linux e remover pacotes da distribuição
	sudo apt update && sudo apt remove -y docker docker-engine docker.io

### Instalar pacotes necessários
	sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

### Adicionar chave GPG do repositorio oficial
	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

### Adicionar o repositorio oficial
	echo \
  	"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] \
	https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  	sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	
### Atualizar repositorios
	sudo apt-get update

# install the latest version
	sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add user to Docker Manager
	sudo usermod -aG docker usuario
