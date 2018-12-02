#!/bin/bash
images=(k8s-gcr-io-kube-apiserver:12.2.0 kube-controller-manager:12.2.0 kube-scheduler:12.2.0 kube-proxy:1.12.0 etcd:3.2.24 coredns:1.2.2 pause:3.1)

for imageName in ${images[@]};do
	docker pull mrright/$imageName
done

# kubeadm init --kubernetes-version=v1.12.2 --pod-network-cidr=10.244.0.0/16 service- cidr=10.96.0.0/12 --ignore-preflight-errors=Swap
# [使用kubeadm安装Kubernetes 1.12](https://www.kubernetes.org.cn/4619.html)

docker pull jmgao1983/flannel:v0.10.0-amd64

docker tag jmgao1983/flannel:v0.10.0-amd64 quay.io/coreos/flannel:v0.10.0-amd64
docker tag mrright/k8s-gcr-io-kube-apiserver:12.2.0 k8s.gcr.io/k8s-gcr-io-kube-apiserver:v1.12.0
docker tag mrright/kube-controller-manager:12.2.0 k8s.gcr.io/kube-controller-manager:v1.12.0
docker tag mrright/kube-scheduler:12.2.0 k8s.gcr.io/kube-scheduler:v1.12.0
docker tag mrright/kube-proxy:1.12.0 k8s.gcr.io/kube-proxy:v1.12.0
docker tag mrright/coredns:1.2.2 k8s.gcr.io/coredns:1.2.2
docker tag mrright/pause:3.1 k8s.gcr.io/pause:3.1
docker tag mrright/etcd:3.2.24 k8s.gcr.io/etcd:3.2.24


