FROM openjdk:8-jdk-alpine
COPY target/gateway-0.0.1-SNAPSHOT.jar app/
EXPOSE 8082
#ENV SPRING_PROFILES_ACTIVE container
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app/gateway-0.0.1-SNAPSHOT.jar"]
