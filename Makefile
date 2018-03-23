IMAGE_NAME := waja/wowza-streaming-engine-persistent

build:
	docker build --rm -t $(IMAGE_NAME) .
	
run:
	@echo docker run --rm -it $(IMAGE_NAME)
	
shell:
	docker run --rm -it --entrypoint sh $(IMAGE_NAME) -l

test: build
	docker ps | grep -q $(IMAGE_NAME)
