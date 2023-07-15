.PHONY: benthos
benthos:
	@docker run --env-file .env.benthos --rm -it -p 4195:4195 -v $(PWD)/benthos.yaml:/benthos.yaml jeffail/benthos
