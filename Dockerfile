# Sử dụng Tomcat 9
FROM tomcat:9.0-jdk11

# Xóa ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR build sẵn thành ROOT.war
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

# Render sẽ set biến PORT nên ta update Tomcat dùng PORT đó
CMD ["sh", "-c", "sed -i 's/8080/${PORT}/g' /usr/local/tomcat/conf/server.xml && catalina.sh run"]
