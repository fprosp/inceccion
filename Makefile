
all:
	hostnamectl set-hostname fprosper.42.fr
	docker compose -f ./srcs/docker-compose.yml up -d --build
down:
	docker compose -f ./srcs/docker-compose.yml down
clean: 
	docker volume rm -f srcs_wordpress_data
	docker volume rm -f srcs_mariadb_data
	docker image rm i-mariadb:1.0.0
	docker image rm i-wordpress:1.0.0
	docker image rm i-nginx:1.0.0

fclean: down clean

re: fclean all

PHONY: all down fclean re
