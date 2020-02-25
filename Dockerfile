#FROM centos
#RUN yum install -y java
#VOLUME /tmp
#EXPOSE 8080
#ARG JAR_FILE=habit-tracking-services-0.0.1-SNAPSHOT.jar
#ADD /$JAR_FILE myapp.jar
#RUN sh -c 'touch /myapp.jar'
#ENTRYPOINT ["java" , "-Djava.security.egd=file:/dev/ ./urandom", "-jar", "/myapp.jar"]

FROM openjdk:12-jdk-alpine
VOLUME /tmp
COPY habit-tracking-services-0.0.1-SNAPSHOT.war app.war
ENTRYPOINT ["java","-jar","/app.war"]