up:
	docker compose up

up-prod:
	docker compose -f docker-compose.yaml -f docker-compose.prod.yaml up
