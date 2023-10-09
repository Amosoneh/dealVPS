FROM maven:3.8.7 as build
COPY src .
RUN mvn package -DskipTests

FROM openjdk:17
COPY --from=build target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "-Dserver.port=${PORT}", "app.jar"]