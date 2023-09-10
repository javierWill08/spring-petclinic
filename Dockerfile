FROM maven:3.9.4-eclipse-temurin-17-alpine

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean 
RUN mvn package

CMD ["java", "-jar", "target/spring-petclinic.jar"]