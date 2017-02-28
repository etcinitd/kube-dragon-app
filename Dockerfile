FROM openjdk:8-jdk

RUN mkdir /usr/src/myapp

COPY target/dragon-app-0.1.0-SNAPSHOT.jar /usr/src/myapp

WORKDIR /usr/src/myapp

CMD ["java", "-jar", "./dragon-app-0.1.0-SNAPSHOT.jar"]
