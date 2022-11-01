help:
	@cat Makefile
build:
	docker compose build --no-cache
up:
	docker compose up nodejs

