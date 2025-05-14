![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

## 📄 License

This project is licensed under a modified [MIT License](LICENSE).

You are free to:

- Use
- Copy
- Modify
- Distribute
- Share

🚫 However, **you are NOT allowed to sell** this software or any derivative works, either individually or as part of a commercial product or service.

## 🙌 Contribute

Have ideas or found an issue? [Open a PR](CONTRIBUTING.md) or start a discussion! Community contributions are welcome!

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

## 📄 License

This project is licensed under the [MIT License](LICENSE).
You are free to use, modify, and distribute this software in both private and commercial settings.
```
