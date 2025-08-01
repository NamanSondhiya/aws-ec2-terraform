# 🖥️ Simple EC2 Instance with Terraform

> **Basic AWS EC2 instance deployment with security group**

[![Terraform](https://img.shields.io/badge/Terraform-1.0+-623CE4?logo=terraform&logoColor=white)](https://terraform.io)
[![AWS](https://img.shields.io/badge/AWS-Free_Tier-FF9900?logo=amazon-aws&logoColor=white)](https://aws.amazon.com)

## 🏗️ Architecture

```
┌─────────────┐    ┌──────────────────┐    ┌─────────────────┐
│   Internet  │───▶│  Security Group  │───▶│  EC2 Instance   │
│             │    │   (SSH Access)   │    │   (t2.micro)    │
└─────────────┘    └──────────────────┘    └─────────────────┘
```

## 📋 Resources Created

- **EC2 Instance** - Single t2.micro instance with public IP
- **Security Group** - SSH access (port 22) from anywhere
- **Tags** - Custom naming and numbering

## 🚀 Quick Deploy

1. **Copy and configure variables:**
   ```bash
   cp variable.tf.example variable.tf
   # Edit variable.tf with your AWS resources
   ```

2. **Deploy:**
   ```bash
   terraform init
   terraform apply
   ```

3. **Get instance details:**
   ```bash
   terraform output
   ```

## ⚙️ Configuration Guide

### Required Variables

| Variable | Description | Example | Required |
|----------|-------------|---------|----------|
| `access_key` | AWS Access Key ID | `AKIAIOSFODNN7EXAMPLE` | ✅ |
| `secret_key` | AWS Secret Access Key | `wJalrXUtnFEMI/K7MDENG...` | ✅ |
| `region` | AWS region | `ap-south-1` | ✅ |
| `vpc_id` | Your VPC ID | `vpc-12345678` | ✅ |
| `subnet_id` | Public subnet ID | `subnet-12345678` | ✅ |
| `instance_name` | Name for your instance | `MyWebServer` | Optional |
| `ami` | Ubuntu AMI ID | `ami-0f918f7e67a3323f0` | Optional |
| `num` | Custom number tag | `300` | Optional |

### 🔍 Find Your AWS Resources

```bash
# List VPCs
aws ec2 describe-vpcs --query 'Vpcs[*].[VpcId,Tags[?Key==`Name`].Value|[0]]' --output table

# List public subnets
aws ec2 describe-subnets --filters "Name=vpc-id,Values=YOUR_VPC_ID" "Name=map-public-ip-on-launch,Values=true" --query 'Subnets[*].[SubnetId,AvailabilityZone]' --output table
```

## 📊 What You'll Get

After deployment:
- **Public IP** - SSH access from internet
- **Private IP** - Internal VPC communication
- **Instance ID** - AWS resource identifier
- **Security Group** - Configured for SSH access

## 📁 Files

- `main.tf` - EC2 instance and security group
- `variable.tf.example` - Configuration template
- `output.tf` - Instance details output
- `.gitignore` - Security exclusions

## 🔒 Security Features

- ✅ SSH access only (port 22)
- ✅ Credentials git-ignored
- ✅ Public IP for external access
- ✅ VPC security group isolation

## 💰 Cost

**Free Tier Usage:**
- 1 x t2.micro instance: **$0/month** (750 hours free)

## 🧹 Cleanup

```bash
terraform destroy
```

## 🎯 Use Cases

- **Learning AWS** - Basic EC2 deployment
- **Development** - Quick test instance
- **SSH Bastion** - Jump server setup
- **Proof of Concept** - Simple cloud instance

---

**⭐ Perfect for AWS beginners and quick deployments!**