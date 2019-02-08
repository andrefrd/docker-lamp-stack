## Instalação
Para facilitar a instalação podemos usar o comando:
```shell
make install
```
*Obs.: Você precisará colocar a senha de sudo para que a instalação, altere as permissões necessárias para funcionamento do Projeto.

- Monta (build) as imagens de dependencias do docker.
- Iniciar o serviço de cron (necessário para Schedules do Laravel).
- Instalar todas as dependências pelo composer.
- Seta as permissões da pasta da aplicação para 777. (sudo)
- Copia o .env.example para seu .env.
- Roda o comando migrate para iniciar o BD.

## Espaço de trabalho

Uso do bash

O que é?<br>
É uma interface de linha de comando para interagir com um sistema operacional.

Futuramente usaremos o bash para ter acesso completo ao espaço de trabalho do projeto, pelo fato de não precisar utilizar o terminal da prória maquina, mas sim dos container. Outro destaque é as ferramentas já estarem instaladas, como por exemplo:

* Composer
* Git
* Mysql client
* Php
* Apache

Vantagem: Caso reinicie a maquina, não seria preciso instalar todas as ferramentas novamente.

## Configuração

A instalação já copia um exemplo de .env para configuração

1. Colocar suas credenciais do Mailtrap.io (http://mailtrap.io).<br>
MAIL_USERNAME=xxxxxxx (Equivalente aos padrões de integrações do mailtrap)<br>
MAIL_PASSWORD=xxxxxxx (Equivalente aos padrões de integrações do mailtrap)<br><br>

2. Registrar um usuário (http://localhost/register). Insira:
* Nome
* Email
* Senha

Registre-se e confirme o endereço de email no mailtrap para concluir o cadastro e iniciar o login

## Comandos disponíveis
Bash - Abre o terminal do docker webserver, na pasta do projeto Laravel
```shell
make bash
```
Install - Comando de instalação descrito na seção (link para instalação)
```shell
make install
```
Start - Inicia os serviços
```shell
make start
```
Stop - Para todos os serviços
```shell
make stop
```
Restart - Para e depois inicua todos os serviços
```shell
make restart
```
Reset - Para todos os serviços, os remove e reinstala todos os serviços.
```shell
make reset
```
Remove - Remove todos os containers
```shell
make remove
```
Migrate - Roda o php artisan:migrate dentro do container do webserver
```shell
make migrate
```
Dumpautoload - Roda o composer dumpautoload dentro do container do webserver
```shell
make dumpautoload
```

## phpMyAdmin

phpMyAdmin está configurado para iniciar junto com sua stack do Docker.

Para acessar:

http://localhost:8080/ <br>
username: root <br>
password: rootPassword