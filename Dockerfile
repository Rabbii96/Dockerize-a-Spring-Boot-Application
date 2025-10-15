# ---- Build ----
FROM maven:3-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn -B -q -DskipTests dependency:go-offline
COPY src ./src
RUN mvn -B -DskipTests package

# ---- Run ----
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar /app/app.jar

# (গুরুত্বপূর্ণ) কোনো JAVA_OPTS/TOOL_OPTIONS সেট কোরো না
# ENV JAVA_TOOL_OPTIONS=""
# ENV JAVA_OPTS=""

EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]

