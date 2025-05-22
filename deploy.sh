#!/bin/bash

echo ">> Setting Docker ke Minikube..."
eval $(minikube docker-env)

echo ">> Build Docker image..."
docker build -t my-app:latest .

echo ">> Deploy ke Kubernetes..."
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo ">> Buka aplikasi di browser..."
minikube service my-app-service
