#Build maven image using docker
FROM maven:3.8.6-jdk-8 as mvn_build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM tomcat:8.0
COPY --from=mvn_build /app/target/*.war /usr/local/tomcat/webapps

