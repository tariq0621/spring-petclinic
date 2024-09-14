FROM maven:3.9.6-eclipse-temurin-17-alpine as build
COPY . /app
WORKDIR /app
RUN mvn clean package
EXPOSE 8080
CMD ["java","-jar","/app/target/spring-petclinic-3.2.0-SNAPSHOT.jar"]