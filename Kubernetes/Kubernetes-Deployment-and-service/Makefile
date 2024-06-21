AWS_REGION=us-east-1
CLUSTER_NAME=hr-stag-eksdemo
KUBECONFIG_PATH={path/home/}

.PHONY: update-kubeconfig get-nodes get-nodes-wide get-services

update-kubeconfig:
	@echo "Updating kubeconfig for cluster: $(CLUSTER_NAME)"
	aws eks --region $(AWS_REGION) update-kubeconfig --name $(CLUSTER_NAME)

get-nodes:
	@echo "Getting nodes in the cluster"
	kubectl get nodes

get-nodes-wide:
	@echo "Getting nodes in the cluster with detailed information"
	kubectl get nodes -o wide

get-services:
	@echo "Getting services in the cluster"
	kubectl get svc

all: update-kubeconfig get-nodes get-nodes-wide get-services
	@echo "All tasks completed"
