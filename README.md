# feel free to make improvements and contributions



# wait-for-service.sh

A lightweight script that waits for a critical HTTP-based service to become available before launching your Java application (JAR). Perfect for Docker and microservices where `depends_on` isn’t enough.

---

## 🎯 Purpose

Ensure services like Keycloak, databases with REST endpoints, or config servers are reachable before starting your dependent Java service.

---

## 🚀 Goal

Prevent container crashes or startup failures due to timing issues in Docker Compose by checking actual service availability.

---

## 🔧 Usage

```bash
./wait-for-service.sh <host> <port> <url-path> <jar-name>
Docker Integration

1. Copy this script into your project
Put wait-for-service.sh into the same directory as your Dockerfile (usually /docker/ or /scripts/).

2. Modify your Dockerfile
Update your service's Dockerfile to copy and use this script:
