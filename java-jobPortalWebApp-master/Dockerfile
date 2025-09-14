FROM eclipse-temurin:17-jdk
WORKDIR /app

COPY . .
RUN chmod +x mvnw wait-for-mysql.sh
RUN ./mvnw clean package -DskipTests

ENTRYPOINT ["./wait-for-mysql.sh", "java", "-jar", "target/jobportal.jar"]
