# Use official OpenJDK image
FROM eclipse-temurin:25-jdk-alpine

# App directory create karo
WORKDIR /app

# JAR file container me copy karo
COPY target/*.jar app.jar

# Container ke port expose
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
