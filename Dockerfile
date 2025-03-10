FROM ubuntu:latest
LABEL authors="NnyabeChamamme"

# Use an official Java runtime as the base image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /to-do

# Copy the built JAR file into the container
COPY target/to-do-0.0.1-SNAPSHOT.jar .

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
