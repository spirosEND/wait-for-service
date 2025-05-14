# Contributing to wait-for-service

🎉 Thanks for your interest in contributing to **wait-for-service**! Whether it's fixing bugs, suggesting enhancements, or improving the documentation — your input is welcome and appreciated.

---

## 🧠 What Is This Project?

`wait-for-service` is a lightweight Bash script that ensures Docker services only start **after** their dependencies are truly ready — preventing those annoying startup race conditions in `docker-compose` setups.

---

## 🧰 Ways You Can Contribute

### 💡 Suggest a Feature

Have an idea that could improve the script? Great!

1. Open an issue: [New Feature Request](../../issues/new?template=feature_request.md)
2. Use the following format:
   - **What problem does this solve?**
   - **Describe the solution you'd like**
   - **Any alternatives you've considered**

---

### 🐛 Report a Bug

Found something that doesn’t work right? Please help us improve by opening a bug report.

1. Go to [New Bug Report](../../issues/new?template=bug_report.md)
2. Include:
   - Clear steps to reproduce the bug
   - Your operating system and Docker version
   - Any relevant logs or errors

---

### 🤝 Submit a Pull Request

We welcome pull requests for:
- Script enhancements
- New features (e.g., Windows support)
- Better logging or retries
- README or doc improvements

#### Steps:
1. 🍴 Fork the repo
2. 📥 Clone your fork:
   ```bash
   git clone https://github.com/YOUR_USERNAME/wait-for-service.git

3. 🚀 Create a new branch:

git checkout -b feature/your-feature-name

4. 💻 Make your changes

5. ✅ Test your changes

6. 📤 Push the branch and open a PR


🧪 Development Tips

Bash version: Preferably 4+

Test with multiple service scenarios (Docker Compose)

Keep dependencies minimal or zero

Ensure compatibility with Alpine-based containers

