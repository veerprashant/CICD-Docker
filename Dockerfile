FROM openjdk:11
Expose 8080
ADD target/phonebook-0.0.1-SNAPSHOT.jar phonebook-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/phonebook-0.0.1-SNAPSHOT.jar"]