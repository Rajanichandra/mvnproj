FROM tomcat:8.0
COPY target/myproj.war /usr/local/tomcat/webapps/myproj.war
ENV JAVA_HOME=/usr/bin/java
WORKDIR /usr/local/tomcat/webapps
USER  root
EXPOSE 9090
CMD ['catalina.sh','run']
