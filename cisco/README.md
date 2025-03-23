# Comandos Cisco

### Backup das configurações
    copy startup-config tftp:1.1.1.1

### Update firmware
archive download-sw /overwrite /reload tftp://1.1.1.1/c2960s-universalk9-tar.122-58.SE2.tar
