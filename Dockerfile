FROM openjdk:24-jdk-slim

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 8083
EXPOSE 8084

ENTRYPOINT ["java", "-jar", "app.jar"]
