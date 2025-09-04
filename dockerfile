<<<<<<< HEAD
# Sử dụng image Tomcat chính thức
=======
# Sử dụng Tomcat 10 + JDK 17
>>>>>>> 352ce75 (update)
FROM tomcat:9.0-jdk17

# Xóa các app mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR đã build vào Tomcat
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
