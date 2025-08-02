FROM openjdk:24-jdk-slim

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 8082
EXPOSE 8083

ENTRYPOINT ["java", "-jar", "app.jar"]
