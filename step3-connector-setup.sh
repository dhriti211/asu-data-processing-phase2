#!/usr/bin/env bash
set -euo pipefail

echo "=== Step 3: Deploying Kafka–Neo4j connector ==="

# Apply all connector-related Kubernetes resources:
# - ConfigMap (connector config)
# - Deployment (Kafka Connect worker)
# - Service (REST API inside cluster)
# - Job (updates Neo4j sink connector config)
kubectl apply -f kafka-neo4j-connector.yaml

echo "Waiting for kafka-neo4j-connector deployment to become ready..."
kubectl rollout status deployment/kafka-neo4j-connector

echo "Current Kafka–Neo4j connector pods:"
kubectl get pods -l app=kafka-neo4j-connector

echo "Step 3 connector setup completed."
