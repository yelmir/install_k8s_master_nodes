# Initialize the cluster
sudo kubeadm init --pod-network-cidr=10.244.0.0/16

# Set up local kubeconfig
mkdir -p $HOME/.kube

sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Apply Calco CNI
kubectl apply -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml
