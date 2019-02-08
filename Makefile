bash:
	docker exec -it financeiro-apache "/bin/bash"
install:
	docker-compose up -d
	docker exec -it financeiro-apache sh -c "cron"
	docker exec -it financeiro-apache sh -c "composer install"
	sudo chmod 777 -R www/
	docker exec -it financeiro-apache sh -c "cp .env.example .env"
	docker exec -it financeiro-apache sh -c "php artisan migrate"
start:
	docker-compose up -d
	docker exec -it financeiro-apache cron
	docker exec -it financeiro-apache composer install
stop:
	docker-compose stop
restart:
	docker-compose stop
	docker-compose up -d
	docker exec -it financeiro-apache cron
	docker exec -it financeiro-apache composer install
reset:
	docker-compose stop
	docker-compose rm -f
	docker-compose build
	docker-compose up -d
	docker exec -it financeiro-apache sh -c "cron"
	docker exec -it financeiro-apache sh -c "composer install"
	sudo chmod 777 -R www/
	docker exec -it financeiro-apache sh -c "cp .env.example .env"
	docker exec -it financeiro-apache sh -c "php artisan migrate"
remove:
	docker-compose stop
	docker-compose rm -f
migrate:
	docker exec -it financeiro-apache sh -c "php artisan migrate"
dumpautoload:
	docker exec -it financeiro-apache sh -c "composer dumpautoload"