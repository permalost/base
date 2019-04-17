
NAME?=example-app
setup:
	docker-compose	-f docker-compose.setup.yml run --rm setup $(NAME)
	cp -f docker-compose*.yml $(NAME)/
	cp -f Makefile $(NAME)/
storybook-install:
	docker-compose	-f docker-compose.builder.yml run --rm storybook-install
install:
	docker-compose	-f docker-compose.builder.yml run --rm install
story:
	docker-compose	-f docker-compose.builder.yml run --rm story
dev:
	docker-compose up