FROM maven:3.8.6-openjdk-11

ENV DB_URL=localhost
ENV DB_PORT=3306
ENV DB_NAME=tawazun-db
ENV DB_USERNAME=admin
ENV DB_PASSWORD=password123

WORKDIR /app

COPY . .

RUN mvn package

EXPOSE 8080

ENTRYPOINT [ "java","-jar","target/tawazun.war" ]