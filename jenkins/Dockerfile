# More info https://hub.docker.com/_/jenkins/
FROM jenkins:1.642.4

USER root
RUN apt-get update && apt-get install -y ruby make 
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
USER jenkins

COPY plugins.txt /var/jenkins_home/plugins.txt
RUN /usr/local/bin/plugins.sh /var/jenkins_home/plugins.txt
