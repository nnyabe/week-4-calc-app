# Use an official Java runtime as the base image
FROM openjdk:17

# Label metadata
LABEL authors="NnyabeChamamme"

# Set a working directory
WORKDIR /app

# Copy the built JAR file into the container
COPY target/to-do-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/app/app.jar"]
