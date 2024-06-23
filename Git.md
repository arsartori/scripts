# Git

### Criar uma nova branch local
	git checkout -b <New Branch>

### Sincronizar a branch local com o GitHub
	git push --set-upstream origin <New Branch>

### Fazer um merge da Branch
	git checkout master
	git merge <branch>

### Definir configurações 
git config --global credential.helper store
git config --global credential.helper "cache --timeout=86400"
