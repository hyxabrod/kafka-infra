# Kafka Infrastructure (Strimzi)

This folder contains the "Infrastructure as Code" (IaC) for our Kafka Eco-system on Kubernetes.

## Structure:
*   `00-namespace`: Creates the `kafka` namespace.
*   `10-strimzi-operator`: Installs the Strimzi Kubernetes Operator.
*   `20-kafka-cluster`: Defines the simplified KRaft (ZooKeeper-less) Kafka Cluster with ephemeral storage.
*   `30-topics`: Standard topics (e.g., `orders.request`, `orders.reply`).
*   `40-changelog`: Compacted topics for Kafka Streams (e.g., `products.changelog`).

## Deployment:
Run the helper script to apply everything in order:
```bash
sh scripts/apply-all.sh
```
