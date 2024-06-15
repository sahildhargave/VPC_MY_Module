.PHONY: create-replicaset delete-replicaset expose-service

create-replicaset:
	@kubectl create -f replicaset-demo.yml

delete-replicaset:
	@kubectl delete -f replicaset-demo.yml

expose-service:
    @kubectl expose rs my-helloworld-rs --type=NodePort --port=80 --target-port=8080 --name=my-helloworld-rs-service