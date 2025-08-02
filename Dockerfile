FROM maven:3.9.11-eclipse-temurin-21 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:21-jdk-slim
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8082
EXPOSE 8083
ENTRYPOINT ["java", "-jar", "app.jar"]
