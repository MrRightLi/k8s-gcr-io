kubectl get cs
scp /usr/lib/systemd/system/docker.service baidu4:/usr/lib/systemd/system/docker.service
scp /etc/sysconfig/kubelet baidu3:/etc/sysconfig/
scp /etc/docker/daemon.json baidu4:/etc/docker/daemon.json

systemctl start docker
systemctl enable docker kubelet