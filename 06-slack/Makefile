setup:
	mkdir -p log
	sudo chmod 777 -R log

clean:
	sudo rm -rf log/ tmp/

bash: setup
	docker-compose run --rm app bash

up: clean setup
	docker-compose up -d --build

down: setup
	docker-compose down
