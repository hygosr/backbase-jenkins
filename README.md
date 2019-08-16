# building backbase-jenkins image
docker build -t eu.gcr.io/backbase-jenkins/backbase-jenkins:latest .

# pushing backbase-jenkins image to registry
docker push eu.gcr.io/backbase-jenkins/backbase-jenkins:latest

# deploying backbase-jenkins with helm
helm install --name=backbase-jenkins helm/backbase-jenkins/
