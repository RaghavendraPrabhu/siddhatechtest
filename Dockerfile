# Use the official Tomcat base image
FROM tomcat:latest

RUN mkdir -p /usr/local/tomcat/conf/custom


COPY server.xml /usr/local/tomcat/conf/custom/

COPY Test.war /usr/local/tomcat/webapps/

EXPOSE 9090

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]

