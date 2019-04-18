FROM ubuntu:latest as base

MAINTAINER Kunai

RUN apt-get update

# Install java
RUN apt-get install --yes --fix-missing openjdk-8-jre

# Install Sonar Scanner
RUN apt-get install --yes wget
RUN apt-get install --yes zip
RUN mkdir /opt/sonarscanner
WORKDIR /opt/sonarscanner
RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.3.0.1492-linux.zip
RUN unzip *.zip
RUN rm *.zip
RUN ln -s /opt/sonarscanner/sonar-scanner-*/bin/sonar-scanner /bin/sonar-scanner
RUN sonar-scanner --version