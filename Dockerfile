FROM openjdk:21
CMD ["mvn", "clean", "package"]
VOLUME /tmp
COPY ./target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]