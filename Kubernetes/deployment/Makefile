IMAGE_NAME := stacksimplify/kubenginx
IMAGE_TAG := 1.0.0
DEPLOYMENT_NAME := my-first-deployment
SERVICE_NAME := my-first-deployment-service

.PHONY: build deploy expose

build:
    @docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .

deploy:
    @kubectl create deployment $(DEPLOYMENT_NAME) --image=$(IMAGE_NAME):$(IMAGE_TAG)

expose:
    @kubectl expose deployment $(DEPLOYMENT_NAME) --type=NodePort --port=80 --target-port=80 --name=$(SERVICE_NAME)
