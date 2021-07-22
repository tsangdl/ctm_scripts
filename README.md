# ctm_scripts
Prerequisites are: go git docker minikube
Details for what I did re these are at the end of thie readme

# Create a new go project
mkdir ctm3 ; cd ctm3
go mod init tsangdl/ctm3
Create the go script sample.go

# Initialise a git repo.
git init.
git add *.
git commit -m "Initial commit".

# run it
go run sample.go

# Build an image and test
go build
./helloworld4

# Containerise the app
# Create the Dockerfile and test
docker build -t helloworld .
docker images   # Should see an image named helloworld
docker run helloworld

# Startup minikube
minikube start

# Create the manifest.yml
kubectl create -f manifest.yml
# The image should be imageworld
# ImagePullPolicy is Never so the image is sourced locally
# A load balanced service is created

# Get the ip address of the url
minikube service go-hello-world-service2 --url
curl http://192.168.49.2:30837

# Run it
minikube service go-hello-world2
Not sure why yet but there was a THis site can't be reached error on my browser. Most probably a proxy or firewall error.
I created a separate app that was a web server but had issues with it displaying on the browser so have not included it here.


# Misc doco
I already had virtualbox installed on my ubuntu laptop so used that for minikube
I used ubuntu-20.04

update.
apt update && apt upgrade -y.

install golang.
https://www.liquidweb.com/kb/install-go/
apt install golang -y.
go version.

install docker
https://linuxhint.com/install_configure_docker_ubuntu/
apt install docker.io.
systemctl enable --now docker.
usermod -aG docker vagrant.
docker --version.
docker run hello-world.

install git.
already installed.

install minikube.
To install to my laptop, I used:
https://phoenixnap.com/kb/install-minikube-on-ubunt

install kubectl.
https://www.howtoforge.com/how-to-install-kubernetes-with-minikube-ubuntu-20-04/
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -.
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list.
apt-get update -y.
apt-get install kubectl kubeadm kubectl -y.

kubeadm init.
Your Kubernetes control-plane has initialized successfully!

To start using your cluster, you need to run the following as a regular user:

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

Alternatively, if you are the root user, you can run:

export KUBECONFIG=/etc/kubernetes/admin.conf

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
https://kubernetes.io/docs/concepts/cluster-administration/addons/

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join 10.0.2.15:6443 --token 58a8dj.g3cezmngqv6fb6v2 \

    --discovery-token-ca-cert-hash sha256:239dbb2e94103736f50aa419179

