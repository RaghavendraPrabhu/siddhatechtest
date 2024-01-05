FROM tomcat:latest

ENV SOAPUI_VERSION 5.7.2
ENV SOAPUI_HOME /usr/local/soapui

# Remove the default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy SoapUI WAR file to Tomcat webapps directory
COPY ./my-soapui-webapp.war /usr/local/tomcat/webapps/

COPY new.xml /app/

# Expose the Tomcat port
EXPOSE 9090

# Start Tomcat
CMD ["catalina.sh", "run"]
