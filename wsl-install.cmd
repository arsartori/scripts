# Enable the Windows Subsystem for Linux
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Enable Virtual Machine feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Download the Linux kernel update package
https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi

# Set the default version
wsl --set-default-version 2

# Upgrade version from WSL 1 to WSL 2 
wsl --set-version <distro name> 2

# Download distribution from store
Ubuntu - https://www.microsoft.com/store/apps/9PN20MSR04DW

# Download distribution manualmente
Option 1 - https://aka.ms/wslubuntu2204
Option 2 - Invoke-WebRequest -Uri https://aka.ms/wslubuntu2204 -OutFile Ubuntu.appx -UseBasicParsing
option 3 - curl.exe -L -o ubuntu-2204.appx https://aka.ms/wslubuntu2204

# Downloading distributions
Debian - https://aka.ms/wsl-debian-gnulinux
Suse - https://aka.ms/wsl-SUSELinuxEnterpriseServer15SP3
Oracle - https://aka.ms/wsl-oraclelinux-8-5
