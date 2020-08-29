DOCKER_REVIEW_BOT_DEV = "projects/back/dev/docker-compose.yml"

clean-release:
	rm -rf ./projects/back/dev/app
clone-release:clean-release
	git clone https://github.com/jm-review-bot/review-bot.git -b release ./projects/back/dev/app
restart-release:clone-release
	docker-compose -f ${DOCKER_REVIEW_BOT_DEV} up --build -d review-bot-dev
logs-release:
	docker logs review-bot-dev
config-release:
	docker-compose -f ${DOCKER_REVIEW_BOT_DEV} config

status:
	docker ps -a