### Развертывание
Установить: **git, docker, docker-compose, make.**

Склонировать девопс-репозиторий:  
**git clone https://github.com/DanilZabolotskiy/review-bot-devops -b master**

Выполнить из корня проекта **make restart-release**

Поднимется контейнер с postgres + контейнер с бэк-сервером

---
---

### Команды Make
Выполняются из корня проекта. При необходимости выполнять от sudo
#### Release
**make clean-release** - удаляет папку с проектом ./projects/back/release/app

**make clone-release** - клонирует проект в папку ./projects/back/release/app и включает ветку release. Содержит команду clean-release

**make restart-release** - пересобирает и запускает контейнер с проектом в фоновом режиме. Содержит команду сlone-release.

**make logs-release** - показывает логи контейнера
