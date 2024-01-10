# Import Tomcat Image
FROM tomcat:9.0.60

# Create work directory
WORKDIR /tomcat

# Add war file
COPY C:\ProgramData\Jenkins\.jenkins\workspace\Docker\Test1_DeployTomkat\Test.war /tomcat/deploy

# Copy required configurations
COPY C:\ProgramData\Jenkins\.jenkins\workspace\Docker\Test1_DeployTomkat\tomcat_users.xml /tomcat/config

# Access application to 9090
EXPOSE 9090

# Run tomcat
CMD ["/bin/catalina.sh", "run"]