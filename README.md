# user-service

# Build locally using Spring Boot 2.3
https://spring-gcp.saturnism.me/deployment/docker/container-image#connect-locally

PROJECT_ID=$(gcloud config get-value project)
PROJECT_ID=companyproject-324019
# Connecting to H2 locally
https://www.bezkoder.com/spring-boot-jpa-h2-example/
# video on connecting to cloud sql from cloud run
https://www.youtube.com/watch?v=jvZXbJv6qJ4

# list permissions in editor role 
Cloud run has the service account attachced to it and it has the role of editor and hence access to connect and get 
and many other permissions
gcloud iam roles describe  roles/editor

# to do restrict access only to 
gcloud iam roles describe  roles/cloudsql.client
- cloudsql.instances.connect
- cloudsql.instances.get



# important
check if the mvn java_home and the java.version in pom.xml is the same
if java_home is 11 , then pom.xml java.version should also be 11
https://stackoverflow.com/questions/51631346/maven-3-8-0-compiler-fatal-error-compiling-release-version-11-not-supported

# install spring cloud and spring gcp dependencies
https://spring.io/projects/spring-cloud-gcp#learn
https://github.com/spring-cloud/spring-cloud-release/wiki/Spring-Cloud-2020.0-Release-Notes
https://cloud.spring.io/spring-cloud-gcp/multi/multi__getting_started.html

# Using Cloud SQL

# run using maven
clean => `mvn clean`
compile => `mvn compile`
Run => `mvn spring-boot:run`
Run local => `mvn spring-boot:run -D"spring-boot.run.arguments"="--spring.profiles.active=local"`

curl https://start.spring.io/starter.tgz -d bootVersion=2.3.0.RELEASE -d dependencies=web


# build container and push using Jib and Testing
  https://cloud.google.com/java/getting-started/jib#build-jib
  https://cloud.google.com/java/getting-started/jib#shipping_the_code
  gcloud config set run/region us-east1

  gcloud run deploy user-service --image gcr.io/companyproject-324019/user-service --platform managed

# Testing locally using Emulator
https://cloud.google.com/run/docs/testing/local
https://cloud.google.com/code/docs/vscode/install

To disable watch mode for subsequent runs, set watch to false in your launch configuration c:\Users\rblba\Documents\tutorials\spring\user-service\.vscode\launch.json and relaunch the application.
To disable watch mode in the current session, click on the Cloud Code Status Bar and select 'Turn off watch mode'


# Maven with Paketo Buildpack
./mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=gcr.io/companyproject-324019/user-service
./mvnw.cmd spring-boot:build-image -Dspring-boot.build-image.imageName=gcr.io/companyproject-324019/user-service
# Maven with GCP Buildpack
./mvnw spring-boot:build-image \
  -Dspring-boot.build-image.imageName=gcr.io/companyproject-324019/user-service \
  -Dspring-boot.build-image.builder=gcr.io/buildpacks/builder



# Run locally
https://spring-gcp.saturnism.me/deployment/docker/container-image#run-locally 

docker pull gcr.io/${PROJECT_ID}/helloworld
docker run -ti --rm -p 8080:8080 gcr.io/${PROJECT_ID}/helloworld
