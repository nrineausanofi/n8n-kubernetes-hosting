k apply -f ./namespace.yaml 
sleep (5)
k apply -f ./n8n-claim0-persistentvolumeclaim.yaml  
sleep (5) 
k apply -f ./postgres-claim0-persistentvolumeclaim.yaml 
sleep (5)  
k apply -f ./postgres-secret.yaml  
sleep (5)  
k apply -f ./postgres-configmap.yaml  
sleep (5)  
k apply -f ./postgres-deployment.yaml  
sleep (5)  
k apply -f ./postgres-service.yaml
sleep (5)  
k apply -f ./n8n-deployment.yaml  
sleep (5)                             
k apply -f ./n8n-service.yaml     
