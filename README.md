# DevOps Intern Final Assessment 🚀

[![DevOps CI Pipeline](https://github.com/ooseni/devops-intern-final/actions/workflows/ci.yml/badge.svg)](https://github.com/ooseni/devops-intern-final/actions)

## 📌 Project Overview
This repository contains the complete step-by-step solution for the **DevOps Intern Final Assessment**. It demonstrates an end-to-end DevOps pipeline incorporating Linux shell scripting, Docker containerization, CI/CD automation with GitHub Actions, container orchestration with HashiCorp Nomad, and log aggregation with Grafana Loki.

**Candidate Name:** Oseni Sakariyau Oluwadamilare  
**Date:** August 2026  
**Repository:** `devops-intern-final`  

---

## 🛠️ Step 1: Git & GitHub Setup
- Initialized Git repository.
- Created `README.md` with project background and author info.
- Created sample Python application `hello.py` printing `"Hello, DevOps!"`.

### Running `hello.py` Locally
```bash
python hello.py
```

### Step 1 Verification Screenshot
![Step 1 - Hello DevOps Output](screenshots/step1_hello_output.png)

---

## 🛠️ Step 2: Linux & Scripting Basics
- Created executable shell script [scripts/sysinfo.sh](scripts/sysinfo.sh).
- Gathers and displays system details:
  - Current user (`whoami`)
  - Current date and time (`date`)
  - Disk usage (`df -h`)

### Running `sysinfo.sh`
```bash
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh
```

### Step 2 Verification Screenshot
![Step 2 - SysInfo Output](screenshots/step2_sysinfo_output.png)

---

## 🛠️ Step 3: Docker Basics
- Created [Dockerfile](Dockerfile) using official `python:3.11-slim` base image.
- Set working directory `/app` and configured non-root security user `devopsuser`.
- Container runs `python hello.py` on startup.

### Building & Running the Docker Container

**1. Build the Docker image:**
```bash
docker build -t hello-devops:latest .
```

**2. Run the Docker container:**
```bash
docker run --rm hello-devops:latest
```

### Step 3 Verification Screenshot
![Step 3 - Docker Build & Run Output](screenshots/step3_docker_run.png)

---

## 🛠️ Step 4: CI/CD with GitHub Actions
- Created workflow [.github/workflows/ci.yml](.github/workflows/ci.yml).
- Automatically triggers on `push` and `pull_request` to `main`.
- Automates execution of `hello.py`, `sysinfo.sh`, and Docker image build & verification test.
- Embedded live build status badge at the top of `README.md`.

### Step 4 Verification Screenshot
![Step 4 - CI Pipeline Status](screenshots/step4_cicd_badge.png)




