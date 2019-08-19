# Description

This helm chart deploy a backbase-jenkins docker image to a kubernetes cluster, exposing the port 8085 as required.

# requirements

* Kubernetes cluster must be running
* helm must be installed

# Requisites

* Helm chart which install jenkins server [OKAY]
* Expose port 8085 [OKAY]

# Steps how to use this helm chart 

1 - Clone this REPO
```bash
$ git clone https://github.com/hygosr/backbase-jenkins.git
```

2 - Build the backbase-jenkins docker image
```bash
$ git clone https://github.com/hygosr/backbase-jenkins.git
```

3 - Push backbase-jenkins docker image to registry (should be changed if needed)
```bash
$ docker push eu.gcr.io/backbase-jenkins/backbase-jenkins:latest
```

4 - Helm to deploy backbase-jenkins docker image
```bash
$ helm install --name=backbase-jenkins helm/backbase-jenkins/
```

5 - Check if jenkins is running with kubectl
```bash
$ kubectl get po
```

# NOTES

1 - I could've used the official jenkins helm chart with just `helm install --name=jenkins stable/jenkins`. However, for the sake of the exercise I've decided to write a new jenkins helm chart from template.

2 - The deployment of jenkins was tested using a GKE (google cloud) kubernetes cluster for the sake of simplicity. However, this solution should work on any k8s cluster with minimal changes like the docker registry address.
