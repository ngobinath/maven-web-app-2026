FROM tomcat:latest
MAINTAINER ngobinath@hotmail.com
RUN apt-get update && apt install zip unzip
RUN mkdir -p /home/ubuntu/maven-pipeline/target
EXPOSE 8080
COPY maven-pipeline/target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app.war
