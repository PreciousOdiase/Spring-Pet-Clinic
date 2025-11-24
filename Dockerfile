# Use Eclipse Temurin JDK 25 as base
FROM eclipse-temurin:25-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the Spring Boot JAR into the container
COPY target/spring-petclinic-4.0.0-SNAPSHOT.jar app.jar

# Expose default Spring Boot port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
