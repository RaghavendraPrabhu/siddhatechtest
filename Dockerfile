# Use the official Tomcat base image
FROM tomcat:latest

# Expose the default Tomcat port
EXPOSE 8082

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]