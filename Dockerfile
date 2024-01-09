FROM tomcat:8.0.53
WORKDIR /usr/local/tomcat/
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY Test2.war /usr/local/tomcat/webapps/
EXPOSE 80
CMD ["catalina.sh", "run"]

