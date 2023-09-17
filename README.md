### Hexlet tests and linter status:
[![Actions Status](https://github.com/itelmenko/devops-for-programmers-project-74/workflows/hexlet-check/badge.svg)](https://github.com/itelmenko/devops-for-programmers-project-74/actions)

### Project tests status:
![Project Actions Status](https://github.com/itelmenko/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)

# Описание репозитория

Docker-окружение для проекта [js-fastify-blog](https://github.com/hexlet-components/js-fastify-blog)

## Требования

* docker-compose версии 1.27+
* make

## Команды запуска

Основные команды описаны в файле Makefile.

### Запуск сервера для разработки локально

```
make dev
```

### Запуск тестов

```
make ci
```

### Сборка образа и отправка на dockerhub

```
make build
make push
```

(Перед этим необходимо аутентифицироваться на dockerhub из консоли)

Созданный на Dockerhub образ - [itelmenko/devops-for-programmers-project-74]( https://hub.docker.com/repository/docker/itelmenko/devops-for-programmers-project-74/general).

### GitHub Actions

В GitHub Actions через файл `.github/workflows/push.yml` описан запуск тестов, сборка образа и отправки обновленного образа в dockerhub.
