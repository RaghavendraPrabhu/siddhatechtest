FROM tomcat:8.0.53

WORKDIR /usr/local/tomcat/

# Copy WAR file into the webapps directory
COPY Test.war /usr/local/tomcat/webapps/

# Copy xml file 
COPY tomcat-users.xml /usr/local/tomcat/conf/

# Expose the default Tomcat port
EXPOSE 9090

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
