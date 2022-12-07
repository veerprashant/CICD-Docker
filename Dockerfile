FROM openjdk:11
Expose 8080
ADD target/CICD-Docker.jar CICD-Docker.jar
ENTRYPOINT ["java","-jar","/CICD-Docker.jar"]