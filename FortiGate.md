# SSL VPN com autenticação SAML MFA
Entrar no Entra ID e adicionar a aplicação empresarial do FortiGate

Entrar no Logon único e configurar as URLs em Configuração básica de SAML

Entrar em atributos e declarações

Adicionar nova declaração

Nome: username

Atributo de origem: user.userprincipalname

Excluir a declaração de grupo: user.groups

Adicionar uma declaração de grupo -> Todos os grupos -> Personalizar o nome da declaração de grupo: group

Baixar o certificado (base64)

Copiar as chaves do quadro "Configurar o FortiGate SSL VPN"

Adicionar os usuário ou grupos

Criar um Acesso Condicional

Forçar o MFA

Copiar o ID dos grupos atribuídos

# FortiGate
Importar o certificado

    Config user saml
    edit azure
    set cert FortiGate_factory
    set entity-id URL (metadata)
    set single sign on url URL Login
    set single logout url logout
    set idp-entity-id "identificado do Microsoft Entra ID"
    set idp single sign on "URL de logon"
    set idp-single-sign on logout URL de logoff
    set idp-cert Remote_cert_1 (certificado upload)
    set user-name "username"
    set group-name "group"
    next end

    config user group
    edit VPN_TI
    set member azure
    config match
    edit 1
    set server-name azure
    set group-name "ID do grupo"
    next
    end


### Ativar debug para analise

    diagnose debug application samld -1
    diagnose debug application fnbamd -1
    diagnose debug enable
    di de di


### Iniciar sincronização AD com o Entra ID
    Start-adsynsynccycle -policytype delta
