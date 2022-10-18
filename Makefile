run:
	docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up --build -d
