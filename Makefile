test:
	@ docker-compose -f docker-compose.yml run app npm test
dev:
	@ docker-compose up --abort-on-container-exit