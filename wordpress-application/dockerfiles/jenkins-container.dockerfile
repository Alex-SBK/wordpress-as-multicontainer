FROM jenkins/jenkins:latest

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

COPY ./for-build/jenkins/plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

COPY ./for-build/jenkins/casc.yaml /var/jenkins_home/casc.yaml

