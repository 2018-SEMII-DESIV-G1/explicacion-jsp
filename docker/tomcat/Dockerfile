FROM tomcat:latest

ADD docker/tomcat/tomcat-users.xml /usr/local/tomcat/conf/
# Clean basic tomcat controllers
RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD target/ROOT.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]