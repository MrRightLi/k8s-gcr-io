- kubectl port-forward nginx-deploy 8080:80
- kubectl port-forward nginx-deploy-57864ddc5-bg4xc 8080:80
- kubectl scale rc nginx --replicas=5
- kubectl get pods -o wide
- kubectl create -f deployment_nginx.yml 
- kubectl get deployments
- kubectl delete deployment nginx-deploy
- kubectl get deployments
- kubectl get pods
- kubectl get deployments -o wide
- kubectl set image deployment nginx-deployment nginx=nginx:1.14.0
- kubectl rollout undo deployment nginx-deployment
- kubectl expose deployment nginx-deployment --type=NodePort
- kubectl expose pods nginx-pod --type=NodePort
- kubectl get pods --show-labels