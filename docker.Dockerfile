# Use an official OpenJDK runtime as a base image
FROM openjdk:17-jdk-slim

# Set a working directory inside the container
WORKDIR /app

# Copy the JAR file from the target folder (ensure your Jenkins build produces this)
COPY target/*.jar app.jar

# Expose the application port (default for Spring Boot apps)
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "app.jar"]
