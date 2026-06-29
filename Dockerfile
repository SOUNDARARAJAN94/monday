FROM eclipse-temurin:17-jdk

COPY target/app.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java","-jar","app.jar"]
