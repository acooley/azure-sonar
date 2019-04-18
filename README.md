# azure-sonar
A docker image that can be used with Azure DevOps to perform Sonar scans.  The other images
 out there are too slim to run in Azure DevOps.

If you want to use it you can do something like this in your ``azure-pipelines.yml``...

````
jobs:
    - job: SonarScanner
      pool:
        vmImage: 'ubuntu-16.04'
      container: kunai/azure-sonar:latest
      steps:
        - script: sonar-scanner -Dsonar.projectKey=$(SONAR_KEY) -Dsonar.host.url=$(SONAR_URL) -Dsonar.login=$(SONAR_LOGIN) 
````
