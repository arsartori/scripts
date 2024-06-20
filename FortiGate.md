# SSL VPN com autenticação SAML MFA
Entrar no Entra ID e adicionar a aplicação empresarial do FortiGate
Entrar no Logon único e configurar as URLs em Conifguração básica de SAML

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
