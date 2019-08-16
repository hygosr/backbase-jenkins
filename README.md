# clone this repo
git clone https://github.com/hygosr/backbase-jenkins.git

# building backbase-jenkins image
docker build -t eu.gcr.io/backbase-jenkins/backbase-jenkins:latest .

# pushing backbase-jenkins image to registry
docker push eu.gcr.io/backbase-jenkins/backbase-jenkins:latest

# deploying backbase-jenkins with helm
helm install --name=backbase-jenkins helm/backbase-jenkins/


# NOTES

1 - I could've used the official jenkins helm chart with just `helm install stable/jenkins`. However, for the sake of the exercise I've decided to write a new jenkins helm chart from template.

2 - The deployment of jenkins was tested using a GKE (google cloud) kubernetes cluster for the sake of simplicity. However, this solution should work on any k8s cluster with minimal changes like the docker registry address.
