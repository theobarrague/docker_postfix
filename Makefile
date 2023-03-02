all: build push

build:
	docker build --no-cache=true --build-arg BUILD_DATE=$(shell date -u +'%Y-%m-%d') -t theobarrague/postfix:latest .

push:
	docker push theobarrague/postfix:latest