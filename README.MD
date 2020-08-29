### Развертывание
Установить: **git, docker, docker-compose, make.**

Склонировать девопс-репозиторий:  
**git clone https://git.java-mentor.com/Krat12/devops-dev -b master**

Выполнить из корня проекта **make restart-dev**

Поднимется контейнер с postgres + контейнер с бэк-сервером

---
---

### Команды Make
Выполняются из корня проекта. При необходимости выполнять от sudo
#### Release
**make clean-dev** - удаляет папку с проектом ./projects/back/release/app

**make clone-dev** - клонирует проект в папку ./projects/back/release/app и включает ветку release. Содержит команду clean-release

**make restart-dev** - пересобирает и запускает контейнер с проектом в фоновом режиме. Содержит команду сlone-release.

**make logs-dev** - показывает логи контейнера
