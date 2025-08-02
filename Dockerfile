FROM openjdk:24-jdk-slim

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 8080
EXPOSE 8082

ENTRYPOINT ["java", "-jar", "app.jar"]
