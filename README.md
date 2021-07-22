# ctm_scripts

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
# Create the Dockerfile
docker build -t sample2 .
docker images
docker run sample2

# Create the manifest.yml
kubectl create -f manifest.yml

# Get the ip address of the url
minikube service go-hello-world-service2 --url
curl http://192.168.49.2:30837

# Run it
minikube service go-hello-world2

