# Kubectl 命令帮助

- kubectl get pods -o wide

- kubectl expose deployment nginx-deploy --name=nginx --port=80 --target-port=80 --protocol=TCP
- kubectl get services
- kubectl get pods -n kube-system -o wide
- kubectl get services -n kube-system
- kubectl describe deployment nginx-deploy
- kubectl run myapp --image=ikubernetes/myapp:vq --replicas=2
- kubectl scale --replicas=5 deployment nginx-deploy
- kubectl set image deployment/nginx busybox=busybox nginx=nginx:1.9.1

- kubectl create -f pods-demo.yaml