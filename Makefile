run:
	sudo docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up --build -d

stop:
	- sudo docker kill $(shell sudo docker ps -q)

clean: stop
	- sudo docker rm $(shell sudo docker ps -a -q)
	- sudo docker rmi $(shell sudo docker images -q)
	- sudo docker container prune
	- sudo docker image prune
	- $(shell sudo rm -rf ./data/wordpress-db/\*)

re: clean
	$(MAKE) run

.PHONY: re clean run stop
