
NAME?=example-app
setup:
	docker-compose	-f docker-compose.setup.yml run --rm setup $(NAME)
	cp -f docker-compose*.yml $(NAME)/
	cp -f Makefile $(NAME)/
	cp -f .gitignore $(NAME)/
install:
	docker-compose	-f docker-compose.builder.yml run --rm install
storybook-install:
	docker-compose	-f docker-compose.builder.yml run --rm storybook-install
story:
	docker-compose	-f docker-compose.builder.yml run --service-ports --rm story
COMMAND?=-h
npm:
	docker-compose	-f docker-compose.builder.yml run --service-ports --rm npm $(COMMAND)
dev:
	docker-compose up