#Stage 1
FROM mysql:8 AS build

WORKDIR /app

COPY pom.xml .

RUN mvn install

COPY . .

RUN mvn clean compile

EXPOSE 8000