bash:
	docker-compose run --rm app bash

up:
	docker-compose up -d

down:
	docker-compose down

log:
	sudo tail -f /var/lib/docker/containers/`docker-compose ps -q app`/`docker-compose ps -q app`-json.log
