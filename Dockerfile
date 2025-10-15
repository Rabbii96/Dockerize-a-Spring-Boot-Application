# Build stage
FROM maven:3-eclipse-temurin-17 AS build
WORKDIR /app

# Copy only the files needed for dependency resolution (faster builds)
COPY pom.xml .
# Download dependencies
RUN mvn dependency:go-offline

# Copy source code
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Production stage
FROM eclipse-temurin:17-jre-alpine

# Set timezone
ENV TZ=UTC

# Create a non-root user
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring

WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Set JVM options for production
ENV JAVA_OPTS="-Xms256m -Xmx512m -XX:MaxRAMPercentage=75.0 -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle"

# Run the application
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
