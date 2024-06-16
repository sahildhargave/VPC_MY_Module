#### Kubernetes - Services

### Services
- [x] ClusterIP     - Used for communication between applications inside k8s cluster (Example: Fronted Application accessing backend application)

- [x] NodePort      - Used for accessing applications outside of k8s cluster using Worker Node Ports (Example: Accessing Frontend Application on browser)

- [x] LoadBalancer  - Primarily for cloud Providers to integrate with their Load Balancer

- [x] Ingress       - Ingress is an advanced load balancer which provides Context path based routing ,SSL,SSL Redirect and many more (Example: AWS ALB)

- [x] ExternalName  - To access externally hosted apps in k8s cluster (Example: Access AWS RDS Database endpoint by application present inside k8s cluster) 