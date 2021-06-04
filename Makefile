
NAME?=example-app
setup:
	cd ../ && \
	docker-compose -f ./base/docker-compose.setup.yml run --rm setup $(NAME) && \
	cd ./$(NAME) && \
	cp -f ../base/docker-compose*.yml ./ && \
	cp -f ../base/Makefile ./ && \
	cp -f ../base/.gitignore ./ && \
	$(MAKE) yarn-install && \
	$(MAKE) storybook-install && \
	$(MAKE) eslint-install && \
	$(MAKE) yarn-install 
npm-install:
	docker-compose -f docker-compose.builder.yml run --rm install
eslint-install:
	docker-compose -f docker-compose.builder.yml run --rm npm install eslint --save-dev 
storybook-install:
	docker-compose -f docker-compose.builder.yml run --rm storybook-install
story:
	docker-compose -f docker-compose.builder.yml run --service-ports --rm story
COMMAND?=-h
npm:
	docker-compose -f docker-compose.builder.yml run --service-ports --rm npm $(COMMAND)
yarn-install:
	docker-compose -f docker-compose.builder.yml run --rm yarn install
dev:
	docker-compose up
