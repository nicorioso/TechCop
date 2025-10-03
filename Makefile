DOCKER_COMPOSE = docker-compose
PROJECT_NAME = techcop

.PHONY: start stop status logs build

start:
	$(DOCKER_COMPOSE) -p $(PROJECT_NAME) up -d

stop:
	$(DOCKER_COMPOSE) -p $(PROJECT_NAME) down

status:
	$(DOCKER_COMPOSE) -p $(PROJECT_NAME) ps

logs:
	$(DOCKER_COMPOSE) -p $(PROJECT_NAME) logs -f

build:
	$(DOCKER_COMPOSE) -p $(PROJECT_NAME) build