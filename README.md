# Terraform AWS Web Infrastructure

> Modular, multi-environment Terraform project for deploying a web application using EC2, ALB, and Auto Scaling Groups on AWS.

---

## 🔹 Project Overview

This project demonstrates **Terraform best practices**:

- Modular architecture with reusable components
- Multi-environment setup (`dev`, `prod`)
- CI pipeline for Terraform plan using **GitHub Actions**
- Remote backend with **S3 + DynamoDB** for state management
- Infrastructure includes:
  - EC2 instances managed by Auto Scaling Groups
  - Application Load Balancer (ALB)
  - Security Groups for EC2 and ALB
  - IAM roles for EC2 with SSM access
  - CloudWatch dashboard for metrics
- Fully reviewable Terraform plan in **Pull Requests**

---

## 🏗️ Project Structure

