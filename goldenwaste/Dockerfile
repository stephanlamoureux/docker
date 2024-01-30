FROM maven:3.8.6-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn package

FROM openjdk:17.0.1-jdk-slim AS run
ENV GOLDEN_DB_URL=localhost
ENV GOLDEN_DB_NAME=goldenwaste
ENV GOLDEN_DB_USERNAME=root
ENV GOLDEN_DB_PASSWORD=DevOps2022
ENV GOLDEN_DB_PORT=3306
WORKDIR /app
COPY --from=build /app .
EXPOSE 8080
ENTRYPOINT ["java","-jar","target/goldenwaste.jar"]

# docker network create goldenwaste-network

# docker run -d --network goldenwaste-network --name goldenwastesqldb -e MYSQL_ROOT_PASSWORD=DevOps -e MYSQL_DATABASE=goldenwaste mysql

# docker build -t goldenwaste:multi -f Dockerfile_multi .

# docker run -itd --name golden-app -p 9876:8080 --network goldenwaste-network -e GOLDEN_DB_URL=goldenwastesqldb -e GOLDEN_DB_PASSWORD=DevOps -e GOLDEN_DB_USERNAME=root -e GOLDEN_DB_NAME=goldenwaste -e GOLDEN_DB_PORT=3306 goldenwaste:multi