DOCKER_SOCIAL_DEV = "projects/back/dev/docker-compose.yml"

clean-dev:
	rm -rf ./projects/back/dev/app
clone-dev:clean-dev
	git clone https://alie:vivec3769git.java-mentor.com/Krat12/developer-social -b dev ./projects/back/dev/app
restart-dev:dev
	docker-compose -f ${DOCKER_SOCIAL_DEV} up --build -d social-dev
logs-dev:
	docker logs social-dev
config-dev:
	docker-compose -f ${DOCKER_SOCIAL_DEV} config

status:
	docker ps -a
