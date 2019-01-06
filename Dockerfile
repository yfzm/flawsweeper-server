#FROM tomcat:9-jre8
#ADD ./target/flawsweeper-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/

FROM openjdk:8-jre
RUN mkdir /app
COPY ./target/flawsweeper-0.0.1-SNAPSHOT.jar /app/flawsweeper.jar
EXPOSE 8080
CMD java -jar /app/flawsweeper.jar