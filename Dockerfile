# Use OpenJDK 17
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the built JAR
COPY build/libs/web-api-product-0.0.1-SNAPSHOT.jar app.jar

# Expose port
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]