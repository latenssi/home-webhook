IMAGE_NAME = "home-webhook"

.PHONY: build
build:
	@docker build -t $(IMAGE_NAME) .

.PHONY: run
run:
	@docker run --env-file .env.test --rm -it -p 9000:9000 --name $(IMAGE_NAME) $(IMAGE_NAME) -hooks=/config/hooks.yaml -verbose

.PHONY: shell
shell:
	@docker run --env-file .env --rm -it -p 9000:9000 --name $(IMAGE_NAME) --entrypoint sh $(IMAGE_NAME) -
