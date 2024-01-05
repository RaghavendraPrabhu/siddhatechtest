FROM tomcat

COPY test.war /usr/local/tomcat/webapps/

EXPOSE 9090
