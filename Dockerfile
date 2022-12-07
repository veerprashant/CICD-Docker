FROM openjdk:8
COPY target/example.smallest-0.0.1-SNAPSHOT.war dockertutorial.jar
ENTRYPOINT ["java","-jar","/dockertutorial.jar"]