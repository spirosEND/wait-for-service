##example Dockerfile for a theoritical analytics service

FROM openjdk:17-alpine

WORKDIR /app

COPY target/analytics-service-1.0.0-SNAPSHOT.jar /app/
COPY wait-for-service.sh /wait-for-service.sh

RUN chmod +x /wait-for-service.sh && apk add --no-cache curl

CMD ["/wait-for-service.sh", "keycloak-service", "8080", "/realms/master", "analytics-service-1.0.0-SNAPSHOT.jar"]
