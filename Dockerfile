FROM openjdk:11
Expose 8080
ADD target/Application2.jar Application2.jar
ENTRYPOINT ["java","-jar","/Application2.jar"]