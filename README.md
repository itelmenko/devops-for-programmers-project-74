### Hexlet tests and linter status:
[![Actions Status](https://github.com/itelmenko/devops-for-programmers-project-74/workflows/hexlet-check/badge.svg)](https://github.com/itelmenko/devops-for-programmers-project-74/actions)

## Шаг 1

Получаем код проекта

```shell
git clone git@github.com:hexlet-components/js-fastify-blog.git app
# удаляем каталог с репозиторием,
# так как мы не используем git submodules
rm -rf app/.git
```

Запускаем в Docker

```shell
# устанавливаем зависимости
docker run -it --user $(id -u):$(id -g) -w /root -v `pwd`/app:/root node:14.18.1 npm ci
# запускаем проект
docker run -it --user $(id -u):$(id -g) -w /root -v `pwd`/app:/root -p 8080:8080 node:14.18.1 npm run dev
```
Ставим свой user id, чтобы файлы не принадлежали root

## Шаг 2

Docker Compose (Тесты)
"Упакуем" наше приложение в Docker Compose.
Для этого используем схему с двумя файлами (override).
Основная конфигурация для тестирования продакшен-сборки, дополнительная (override)
– для локальной разработки.

Проверьте работоспособность

```shell
docker-compose up
# Откройте в браузере localhost:8080
```

Теперь для запуска тестов c использованием Docker Compose необходимо выполнять следующую команду:
```shell
docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
```

## Шаг 3

3. Создайте файл Dockerfile.production в корне проекта и добавьте туда полную установку приложения с зависимостями
4. Переместите секцию volumes приложения из docker-compose.yml в docker-compose.override.yml
5. Сделайте так, чтобы для разработки использовался Dockerfile, а для тестов Dockerfile.production

Дев-вариант запускается так

```shell

docker-compose up --abort-on-container-exit
```

После его запуска тесты запускаются так:

```shell
docker-compose run app npm test
```


