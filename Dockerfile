# Use an official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the built jar from target folder
COPY target/Tracker-78-0.0.1-SNAPSHOT.jar app.jar


# Expose the default Spring Boot port
EXPOSE 8081

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]