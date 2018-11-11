FROM tomcat:latest

ADD docker/tomcat/tomcat-users.xml /usr/local/tomcat/conf/
ADD target/ROOT.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]