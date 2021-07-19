# Bilinho

## Sobre
#### Segunda versão do Bilinho usando Ruby on Rails e Docker 

![Badge](https://img.shields.io/static/v1?label=Project&message=V1.0.0&color=blue&style=for-the-badge) ![Badge](https://img.shields.io/static/v1?label=Ruby&message=2.7.0&color=red&style=for-the-badge&logo=ruby) ![Badge](https://img.shields.io/static/v1?label=Rails&message=6.1.4&color=red&style=for-the-badge)

Indice
=================
<!--ts-->
   * [Sobre](#Sobre)
   * [Indice](#Indice)
   * [Features](#Features)
   * [Instalação](#instalacao)
   * [Como usar](#como-usar)
      * [Pre Requisitos](#pre-requisitos)
      * [Local files](#local-files)
      * [Remote files](#remote-files)
      * [Multiple files](#multiple-files)
      * [Combo](#combo)
   * [Tests](#testes)
   * [Tecnologias](#tecnologias)
<!--te-->

<h2 align="center"> 
	🚧  Bilinho com Ruby on Rails 🚀 Em construção...  🚧
</h2>

### Features

- [x] Cadastro de aluno
- [x] Cadastro de instituição de ensino
- [x] Matricula e criação de faturas
- [x] Destroy altomatico das faturas com destroy de matricula
- [ ] Destroy altomático de matriculas por destroy de aluno ou instituição 
- [ ] Aplicação Dockerizada por completo

## Instalação

### Instalar a ultima versão do PostgreSQL
```bash
# Create the file repository configuration:
$ sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:
$ wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:
$ sudo apt-get update

# Install the latest version of PostgreSQL.
$ sudo apt-get -y install postgresql

# Database creation on POSTRGRESQL
$ psql
$#-> CREATE USER admin WITH SUPERUSER PASSWORD 'admin';
$#-> CREATE DATABASE bilinho

```

# Database initialization

* rails db:migrate

# How to run the test suite

# Services (job queues, cache servers, search engines, etc.)

# Deployment instructions

 * bundle install

# ...
