FROM maven:3.9.4-eclipse-temurin-17-alpine

WORKDIR /app

COPY pom.xml .
COPY src ./src toda la aplicacion 

RUN mvn clean 
RUN mvn test
RUN mvn package

FROM openjdk:8
COPY .. /mvn/w 
EXPOSE 8080


CMD ["java", "-jar", "target/spring-petclinic.jar" ]