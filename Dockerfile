FROM tomcat:9.0-jdk11

# Xóa webapp mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR thành ROOT.war
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Render sẽ cấp cổng qua biến môi trường $PORT
EXPOSE 8080

# Update Tomcat để lắng nghe trên $PORT thay vì 8080
CMD ["sh", "-c", "sed -i 's/8080/${PORT}/g' /usr/local/tomcat/conf/server.xml && catalina.sh run"]
