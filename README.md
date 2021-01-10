# install a kubernetes cluster 

## 1- Run "install-docker-kube.sh" on all nodes;

## 2- Run "k8s-install-master-node.sh" only in the Master node;

## 3- Run this cmd in the Master node to get token join
```bash
      kubeadm token create --print-join-command
```

## 4- Run this cmd just in the workers to join them to master
```bash
      sudo kubeadm join 172.31.103.116:6443 --token tu8zo7.f5hxyerxtu1tc388     --discovery-token-ca-cert-hash sha256:1e482af77219c6b855573cde6d38f3423afbe328a3ea0a50fdcb2a1e27f5cb74
```
**N.B:** It's not mandatory to get the same token as the command before

## 5- Run this cmd to verify cluster status
```bash
kubectl get nodes
```

