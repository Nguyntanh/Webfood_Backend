# Sử dụng base image Java
FROM openjdk:17-jdk-slim
# Copy file JAR từ build
COPY target/server-0.0.1-SNAPSHOT.jar app.jar
# Cổng ứng dụng (mặc định Spring Boot)
EXPOSE 8090
# Chạy ứng dụng
ENTRYPOINT ["java", "-jar", "/app.jar"]