# Terraform EC2 Instance with Key Pair

This Terraform setup provisions a new EC2 instance on AWS, generates a new SSH key pair, and outputs the instance's public IP and private key.

---

## 📁 Folder Structure
├── main.tf
├── variables.tf
├── provider.tf
├── outputs.tf
├── README.md


---

## ⚙️ What It Does

- ✅ Creates an RSA SSH key pair using Terraform
- ✅ Stores the key pair in AWS and outputs the private key
- ✅ Creates a security group that allows SSH access (port 22)
- ✅ Launches an EC2 instance in the specified region
- ✅ Outputs instance ID, public IP, and private key

---

## 🧾 Requirements

- Terraform ≥ 1.0
- AWS CLI configured (`aws configure`)
- An AWS IAM user with EC2 and Key Pair permissions

---

## 🚀 How to Use

### 1. Initialize Terraform

terraform init

### 2. Validate

terraform validate

### 3. Plan
terrafom plan

### 4. Apply the terraform plan
terraform apply

### Confirm when prompted with yes.

### After applying Save the Private Key
## Once the instance is created, extract and save the private key:

terraform output -raw private_key_pem > terraform-key.pem
chmod 400 terraform-key.pem

### Connect to EC2 via SSH (RUN the ssh where Private Key is saved)

ssh -i terraform-key.pem ec2-user@<public_ip>   

### Replace <public_ip> with the value from : terraform output public_ip

  

