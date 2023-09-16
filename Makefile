dev:
	@ docker-compose up --abort-on-container-exit
ci:
	@ docker-compose -f docker-compose.yml run app npm test
build:
	@ docker-compose -f docker-compose.yml build app
push:
	@ docker-compose -f docker-compose.yml push app
env:
	@ cp .env.example .env