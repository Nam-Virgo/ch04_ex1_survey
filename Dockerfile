FROM tomcat:9.0-jdk11

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR từ dist/ của NetBeans
COPY dist/ch04_ex1_survey.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat mặc định chạy trên 8080, Render sẽ tự map $PORT → 8080
EXPOSE 8080

# Run Tomcat ở foreground
CMD ["catalina.sh", "run"]
