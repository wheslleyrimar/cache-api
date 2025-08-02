FROM arm64v8/maven:3.9-amazoncorretto-24-al2023 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package

FROM eclipse-temurin:24-jdk
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8082
EXPOSE 8083
ENTRYPOINT ["java", "-jar", "app.jar"]
