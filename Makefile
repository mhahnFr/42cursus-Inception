run:
	docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up --build -d

stop:
	docker kill $(shell docker ps -q)

clean: stop
	docker rm $(shell docker ps -a -q)
	docker rmi $(shell docker images -q)
	docker container prune
	docker image prune

re: clean
	$(MAKE) run

.PHONY: re clean run stop
