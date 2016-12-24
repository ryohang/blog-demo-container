FROM java:8-jdk

MAINTAINER AWSMeter Team

EXPOSE 8080

ENV PACKAGE_JAR demo-api.jar

COPY *.jar  /usr/src/$PACKAGE_JAR
WORKDIR /usr/src/

CMD java -jar $PACKAGE_JAR