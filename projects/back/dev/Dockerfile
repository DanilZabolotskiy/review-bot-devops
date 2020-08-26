FROM maven:3.6.3-jdk-11 as build-stage
WORKDIR /app/
COPY ./projects/back/dev/app/ .
RUN mvn package -Dmaven.test.skip

FROM openjdk:11
WORKDIR /app/
COPY --from=build-stage /app/target/review-bot.jar /app/target/
EXPOSE 5560
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.general=devops-app", "target/review-bot.jar"]
