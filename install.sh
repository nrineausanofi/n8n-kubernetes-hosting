#!/bin/bash
aws eks update-kubeconfig --region eu-west-1 --name w-c-eks-f-int
alias k='kubectl'

kubectl apply -f ./namespace.yaml 
sleep 5
kubectl apply -f ./n8n-claim0-persistentvolumeclaim.yaml  
sleep 5
kubectl apply -f ./postgres-claim0-persistentvolumeclaim.yaml 
sleep 5 
kubectl apply -f ./postgres-secret.yaml  
sleep 5  
kubectl apply -f ./postgres-configmap.yaml  
sleep 5 
kubectl apply -f ./postgres-deployment.yaml  
sleep 5  
kubectl apply -f ./postgres-service.yaml
sleep 5  
kubectl apply -f ./n8n-deployment.yaml  
sleep 5                            
kubectl apply -f ./n8n-service.yaml     
