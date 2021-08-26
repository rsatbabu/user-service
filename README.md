# user-service

# Build locally using Spring Boot 2.3
https://spring-gcp.saturnism.me/deployment/docker/container-image#connect-locally

PROJECT_ID=$(gcloud config get-value project)
PROJECT_ID=companyproject-324019

# important
check if the mvn java_home and the java.version in pom.xml is the same
if java_home is 11 , then pom.xml java.version should also be 11
https://stackoverflow.com/questions/51631346/maven-3-8-0-compiler-fatal-error-compiling-release-version-11-not-supported

# run using maven
clean => `mvn clean`
compile => `mvn compile`
Run => `mvn spring-boot:run`
Run local => `mvn spring-boot:run -D"spring-boot.run.arguments"="--spring.profiles.active=local"`


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
