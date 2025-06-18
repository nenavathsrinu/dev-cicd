#!/bin/bash

# Step 1: Navigate to terraform folder
cd terraform || exit

# Step 2: Get EC2 public IP from Terraform output
PUBLIC_IP=$(terraform output -raw ec2_public_ip)

# Step 3: Write to Ansible inventory.ini file
cat <<EOF > ../ansible/inventory.ini
[web]
$PUBLIC_IP ansible_user=ec2-user ansible_ssh_private_key_file=/var/lib/jenkins/.ssh/id_rsa
EOF

echo "✅ Ansible inventory.ini created with IP: $PUBLIC_IP"