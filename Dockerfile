#Stage 1 - BUILD 
FROM maven AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#Stage 2 - PACKAGE
FROM ubuntu/jre
COPY --from=build /home/app/target/*.jar /usr/local/lib/run.jar
EXPOSE 8000
ENTRYPOINT ["java", "-jar", "/usr/local/lib/run.jar"]