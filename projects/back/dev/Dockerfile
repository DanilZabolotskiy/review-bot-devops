FROM maven:3.6.3-jdk-8 as build-stage
WORKDIR /app/
COPY ./projects/back/dev/app/ .
RUN mvn package -Dmaven.test.skip

FROM openjdk:8
WORKDIR /app/
COPY --from=build-stage /app/target/social.jar /app/target/
EXPOSE 5561
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.general=devops-app", "target/social.jar"]
