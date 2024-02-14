#!/bin/bash
aws eks update-kubeconfig --region eu-west-1 --name w-c-eks-f-int
alias k='kubectl'
alias kgp='kubectl get pod -n n8n'
alias kdp='kubectl describe pod -n n8n'
alias kl='kubectl logs -n n8n'
alias klf='kubectl logs -n n8n --follow'
alias kgs='kubectl get svc -n n8n'
alias kds='kubectl describe svc -n n8n'
alias kgi='kubectl get ingress -n n8n'
alias kdi='kubectl describe ingress -n n8n'
alias kexec='k exec -it -n n8n'
alias kdelp='kubectl delete pod -n n8n'
alias ll='ls -artl'
alias krollout='kubectl rollout restart -n n8n '
alias kgd='kubectl get Deployment -n n8n'
alias kdd='kubectl describe Deployment -n n8n'
alias kapply='kubectl apply -n n8n -f '
alias kevents='kubectl get events -n n8n '
alias kpv='kubectl get pv -n n8n '
alias kpvc='kubectl get pvc -n n8n '
k apply -f ./namespace.yaml 
sleep 5
k apply -f ./n8n-claim0-persistentvolumeclaim.yaml  
sleep 5
k apply -f ./postgres-claim0-persistentvolumeclaim.yaml 
sleep 5 
k apply -f ./postgres-secret.yaml  
sleep 5  
k apply -f ./postgres-configmap.yaml  
sleep 5 
k apply -f ./postgres-deployment.yaml  
sleep 5  
k apply -f ./postgres-service.yaml
sleep 5  
k apply -f ./n8n-deployment.yaml  
sleep 5                            
k apply -f ./n8n-service.yaml     
