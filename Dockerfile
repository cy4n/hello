FROM openjdk:8-jre
EXPOSE 8080

RUN mkdir /app
COPY target/hello*.jar /app/hello.jar
WORKDIR /app
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/hello.jar"]
