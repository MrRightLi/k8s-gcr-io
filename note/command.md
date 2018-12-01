  672  kubectl port-forward nginx-deploy 8080:80
  673  kubectl port-forward nginx-deploy-57864ddc5-bg4xc 8080:80
  698  kubectl scale rc nginx --replicas=5
  699  kubectl get pods -o wide
  713  kubectl create -f deployment_nginx.yml 
  714  kubectl get deployments
  715  kubectl delete deployment nginx-deploy
  716  kubectl get deployments
  717  kubectl get pods
  718  kubectl get deployments -o wide
  724  kubectl set image deployment nginx-deployment nginx=nginx:1.14.0
  731  kubectl rollout undo deployment nginx-deployment
  733  kubectl expose deployment nginx-deployment --type=NodePort