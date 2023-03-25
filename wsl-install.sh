# Habilitar o Subsistema do Windows para Linux
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Habilitar o recurso de Máquina Virtual
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Baixar o pacote de atualização do kernel do Linux
https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi

# Definir o WSL 2 como a sua versão padrão
wsl --set-default-version 2

# Download distribution from store
https://www.microsoft.com/store/apps/9PN20MSR04DW

# Download distribution manualmente
Opção 1 - https://aka.ms/wslubuntu2204
Opção 2 - Invoke-WebRequest -Uri https://aka.ms/wslubuntu2004 -OutFile Ubuntu.appx -UseBasicParsing
Opção 3 - curl.exe -L -o ubuntu-2004.appx https://aka.ms/wslubuntu2004

