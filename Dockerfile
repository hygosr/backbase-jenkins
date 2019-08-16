FROM jenkins/jenkins:lts

EXPOSE 8085 50000

# installing required plugins
RUN /usr/local/bin/install-plugins.sh kubernetes:1.14.0 workflow-job:2.31 workflow-aggregator:2.6 credentials-binding:1.17 git:3.9.1 
