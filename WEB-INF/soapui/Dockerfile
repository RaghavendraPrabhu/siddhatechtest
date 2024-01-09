# This line specifies the base image for the build stage
FROM tomcat:8.0.53

# This line declares a Tomcat work directory 
WORKDIR /usr/local/tomcat

# This line copies a custom tomcat-users.xml file from the local directory into the Tomcat configuration directory
COPY tomcat-users.xml /usr/local/tomcat/conf/

# This line copies a Test.war file from the local directory into the Tomcat webapps directory in the final image
COPY Test.war /usr/local/tomcat/webapps/

# This line exposes port 9090
EXPOSE 9090

# This line sets the default command to run when a container is started
CMD ["catalina.sh", "run"]
