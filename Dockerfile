FROM jenkins/jenkins:latest

# expose port 8085 as required
EXPOSE 8085

# skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# installing required plugins
RUN /usr/local/bin/install-plugins.sh kubernetes workflow-job workflow-aggregator credentials-binding git 
