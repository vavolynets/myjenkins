FROM jenkins/jenkins:lts-alpine

ARG DUID
ARG DUSER

USER root

RUN addgroup -g $DUID $DUSER && \
    adduser jenkins $DUSER

RUN apk update && \
    apk upgrade && \
    apk add py-pip && \
    pip install --upgrade pip && \
    pip install docker-compose && \
    rm -rf /var/cache/apk/* 

USER jenkins

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Create user
COPY create_user.groovy /usr/share/jenkins/ref/init.groovy.d/create_user.groovy

# Setting up environment variables for Jenkins admin user
#ENV JENKINS_USER admin
#ENV JENKINS_PASS admin
 
# Skip the initial setup wizard
#ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
