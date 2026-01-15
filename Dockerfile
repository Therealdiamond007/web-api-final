FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

COPY . .

RUN apk add --no-cache gradle
RUN gradle build -x test

EXPOSE 8080

CMD ["java", "-jar", "build/libs/web-api-product-0.0.1-SNAPSHOT.jar"]