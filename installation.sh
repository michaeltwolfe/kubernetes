#updating before doing anything
sudo apt update

#installing docker
sudo apt install docker.io

#checking version
docker --version

#enabling docker
sudo systemctl enable docker

#check status of docker
sudo systemctl status docker

#start docker
sudo systemctl start docker

#get Kubernetes signing keys
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

#add the Kubernetes repository
sudo apt-add repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

#install Kubernetes
sudo apt install kubeadm kubelet kubectl

#disable swap
sudo swapoff -a
echo 'Swap has been disabled, but it will not persist. Edit the /etc/fstab file to make it persist.'

