# Description

- This helm chart deploy a backbase-jenkins docker image to a kubernetes cluster, exposing the port 8085 as required.
- A Default jenkins JOB called "backbase" is create on boot time for reading the Jenkinsfile on the Java sample REPO (https://github.com/hygosr/backbase-java-sample.git)
- An specific Public Docker image was created for this task and it's hosted on dockerhub (https://hub.docker.com/r/hygosr/backbase-jenkins)

# requirements

For this solution to run its required to have:

* Kubernetes cluster running;
* helm installed;
* kubectl configured to access kubernetes cluster;

# Steps how to use this helm chart 

1 - Clone this REPO
```bash
$ git clone https://github.com/hygosr/backbase-jenkins.git
```

2 - Use Helm to deploy backbase-jenkins docker image
```bash
$ helm install --name=backbase-jenkins helm/backbase-jenkins/
```

3 - Check helm releases
```bash
$ helm list
```

4 - Get Loadbalancer public IP address for jenkins
```bash
$ kubectl get service backbase-jenkins
```

5 - Access Jenkins on browser using the public IP address on port 8085
Example: http://35.202.238.35:8085

6 - On Jenkins WEB check the status of a Job called 'backbase'. Pipeline must have run successfully.

# Requisites 

* Helm chart which install jenkins server [OKAY]
* Expose port 8085 [OKAY]
* Java APP Sample on a different repository [OKAY]
* Pipeline Running inside of the Jenkins Server implemented before [OKAY]
* Pipeline has to run [OKAY]
* Pipeline builds the Java APP docker image [OKAY]

# NOTES

1 - I could've used the official jenkins helm chart with just `helm install --name=jenkins stable/jenkins`. However, for the sake of the exercise I've decided to write a new jenkins helm chart from template.

2 - The deployment of jenkins was tested using a GKE (google cloud) kubernetes cluster for the sake of simplicity. However, this solution should work on any k8s cluster with minimal changes.
