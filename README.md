# Bilinho

## Sobre
#### Segunda versão do Bilinho usando Ruby on Rails e Docker 

![Badge](https://img.shields.io/static/v1?label=Project&message=V1.0.0&color=blue&style=for-the-badge) ![Badge](https://img.shields.io/static/v1?label=Ruby&message=2.7.0&color=red&style=for-the-badge&logo=ruby) ![Badge](https://img.shields.io/static/v1?label=Rails&message=6.1.4&color=red&style=for-the-badge) ![Badge](https://img.shields.io/static/v1?label=Tests&message=60%&color=green&style=for-the-badge)

Indice
=================
<!--ts-->
   * [Sobre](#Sobre)
   * [Indice](#Indice)
   * [Features](#Features)
   * [Instalação](#instalacao)
   * [Tecnologias](#tecnologias)
   * [Autor](#Autor)
<!--te-->

<h3 align="center"> 
	🚧  Bilinho com Ruby on Rails 🚀 Em construção...  🚧
</h3>

### Features

- [x] Cadastro de aluno
- [x] Cadastro de instituição de ensino
- [x] Matricula e criação automática de faturas
- [ ] Soft destroy

## Instalação

### Instalar Git
```bash
$ sudo apt-get update

$ sudo apt-get install git

# Configurando git com seus dados pessoais do github
$ git config --global user.name "<seu nome de uduario>"

$ git config --global user.email "youremail@domain.com"
```
### Adicionando repositório do Node.js
```bash
$ sudo curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -

$ sudo apt-get install nodejs
```
### Instalando Yarn
```bash
$ curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

$ echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

$ sudo apt-get update && sudo apt-get install yarn
```
### Instalando RVM: Ruby Version Manager
```bash
$ \curl -sSL https://get.rvm.io | bash

# iniciar o rvm
$ source ~/.rvm/scripts/rvm
```
### Ruby
```bash
$ rvm install 2.7.0

$ rvm use 2.7.0
```
### Instalar e configurar a ultima versão do PostgreSQL

```bash
# Create the file repository configuration:
$ sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:
$ wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:
$ sudo apt-get update

# Install the latest version of PostgreSQL.
$ sudo apt-get -y install postgresql

# Instalar uma dependência da Gem pg
$ sudo apt-get install libpq-dev

# Editar o arquivo localizado em:
$ cd /etc/postgresql/12/main/pg_hba.conf

# Alterar a palavra 'peer' por 'trust' em:
...
# Database administrative login by Unix domain socket
local        all postgres trust
...

# Reiniciar o serviço do postgres
$ sudo service postgresql restart

# Database creation on POSTRGRESQL
$ psql -U postgres

$#-> ALTER USER postgres WITH ENCRYPTED PASSWORD 'postgres';
$#-> CREATE DATABASE bilinho

# Alterar a palavra 'trust' por 'md5' em:
...
# Database administrative login by Unix domain socket
local        all postgres md5
...

# Reiniciar novamente o postgres
sudo service postgresql restart
```
### Clonando o Repósitorio
```bash
$ git clone https://github.com/gustavorodr/bilinho.git

$ cd bilinho
```
### Instalando dependencias
```bash
$ bundle install
```
## Tecnologias

As seguintes ferramentas foram usadas na construção do projeto:

- [Ruby](https://www.ruby-lang.org/pt/)
- [Rails](https://rubyonrails.org/)
- [PostgreSQL](https://www.postgresql.org/)
- [Docker](https://www.docker.com/)

## Autor
---

<a href="https://www.linkedin.com/in/gustavo-rodrigues-7223b3157/">
 <img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/38133108?v=4" width="100px;" alt=""/>
 <br />
 <sub><b>Gustavo Costa</b></sub></a> <a href="https://www.linkedin.com/in/gustavo-rodrigues-7223b3157/" title="Linkedin"></a>

Feito por Gustavo Costa 👋🏽 Entre em contato!
