# DevOps CI/CD Pipeline with Jenkins, Terraform & Ansible

This project implements a complete DevOps CI/CD pipeline using Jenkins, GitHub, Terraform, and Ansible to provision and configure infrastructure on AWS and deploy a sample application.

---

## 📌 Technologies Used

- **Jenkins** – For continuous integration and deployment
- **GitHub** – Source code repository
- **Terraform** – Infrastructure provisioning (EC2, VPC, etc.)
- **Ansible** – Configuration management (install packages, deploy apps)
- **AWS EC2** – Hosts Jenkins and deployed applications

---

## 📁 Project Structure

devops-cicd/
├── terraform/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ └── install_ansible_amazon_linux.sh
├── ansible/
│ ├── playbook.yml
│ └── inventory.ini
├── generate_inventory.sh
└── Jenkinsfile


---

## ⚙️ Jenkins Pipeline Overview

### Pipeline Stages

1. **Clone GitHub Repo**  
   Clones the repository to Jenkins workspace.

2. **Terraform Init & Apply**  
   Provisions infrastructure (EC2, security groups, VPC) using Terraform.

3. **Generate Inventory**  
   Dynamically creates the Ansible inventory file using public IP of EC2.

4. **Run Ansible Playbook**  
   Configures EC2 instance (e.g., install Node.js, deploy application).

---

## 🚀 Getting Started

### Prerequisites

- AWS IAM credentials configured in Jenkins
- Jenkins installed with:
  - Git plugin
  - Pipeline plugin
- Ansible & Terraform installed on Jenkins EC2 instance

---

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/<your-username>/devops-cicd-pipeline.git
cd devops-cicd-pipeline
