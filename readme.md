# Celery-Django Sample Project

O repositório contém um projeto Django/celery, semi-configurado, usando docker-compose  
e funcional, para uso como base em outros projetos.

## Ajustes e melhorias

Como citado o projeto está bem cru, configurado apenas com o padrão fornecido nas docs do celery.

## Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

<!---Estes são apenas requisitos de exemplo. Adicionar, duplicar ou remover conforme necessário--->

- Python 3.x (o projeto foi feito utilizando a versão 3.10.6)
- Docker e Docker-compose

## Desenvolvimento

Executar o projeto já com o RabbitMQ, Worker e Beat rodando

Subindo os containers:

```
docker compose up -d --build
```

Verificando logs dos containers:

```
docker compose logs 'celery'
```

```
docker compose logs 'celery-beat'
```

```
docker compose logs 'rabbit'
```

Parando e removendo os containers:

```
docker compose down -v
```

Parando e removendo os containers junto com as imagens usadas:

```
docker compose down --rmi all -v
```

Apenas parar os containers:

```
docker compose stop
```
