# Use lightweight Java runtime
FROM eclipse-temurin:11-jre

# Create app directory inside container
WORKDIR /app

# Copy jar from target folder into container
COPY target/demoapp-1.0-SNAPSHOT.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]
