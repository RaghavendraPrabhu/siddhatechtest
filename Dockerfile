FROM tomcat:9-alpine
LABEL maintainer "kavitab"
ADD target/Sidhatest-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
COPY target/Sidhatest-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 80
CMD ["catalina.sh", "run"]

