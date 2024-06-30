# Git

### Iniciar umm projeto
	git init

### Para garantir a compatibilidade do projeto no futuro, alterar a branch master para main
	git branch -M main

### Compartilhar o repositório através do GituHub
	git remote add origin https://github.com/USUARIO/REPOSITORIO.git

### Criar uma nova branch local
	git checkout -b <New Branch>

### Sincronizar a branch local com o GitHub
	git push --set-upstream origin <New Branch>

### Fazer um merge da Branch
	git checkout master
	git merge <branch>

### Definir configurações
	git config --global user.name "My Name"
	git config --global user.email "myemail@example.com" 
	git config --global credential.helper store
	git config --global credential.helper "cache --timeout=86400"
