kubectl apply -f k8s/00-namespace/kafka-namespace.yaml

kubectl apply -n kafka -f k8s/10-strimzi-operator/install-operator.yaml
kubectl -n kafka rollout status deployment/strimzi-cluster-operator

kubectl apply -n kafka -f k8s/20-kafka-cluster/kafka-cluster.yaml
kubectl wait kafka/my-cluster --for=condition=Ready --timeout=300s -n kafka

kubectl apply -f k8s/30-topics/
kubectl apply -f k8s/40-changelog/
