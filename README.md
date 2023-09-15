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
