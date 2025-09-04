# Sử dụng image Tomcat chính thức
FROM tomcat:9.0-jdk17

# Xóa ứng dụng mặc định của Tomcat (ROOT cũ)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy file WAR của bạn vào Tomcat
# Giả sử NetBeans export file thành: dist/Buoi_5.war
COPY dist/Buoi_5.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng 8080 (Tomcat chạy ở đây)
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]
