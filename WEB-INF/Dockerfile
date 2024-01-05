FROM tomcat:latest
 
ENV SOAPUI_VERSION 5.7.2
ENV SOAPUI_HOME /usr/local/soapui
 
# Download and install SoapUI
RUN mkdir -p ${SOAPUI_HOME} \
    && curl -L https://dl.eviware.com/soapuios/${SOAPUI_VERSION}/SoapUI-x64-${SOAPUI_VERSION}.sh -o ${SOAPUI_HOME}/soapui-installer.sh \
    && chmod +x ${SOAPUI_HOME}/soapui-installer.sh \
    && ${SOAPUI_HOME}/soapui-installer.sh -q -dir ${SOAPUI_HOME} \
    && rm ${SOAPUI_HOME}/soapui-installer.sh
 
# Remove the default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*
 
# Copy SoapUI WAR file to Tomcat webapps directory
COPY ./my-soapui-webapp.war /usr/local/tomcat/webapps/
 
# Expose the Tomcat port
EXPOSE 9090
 
# Start Tomcat
CMD ["catalina.sh", "run"]

