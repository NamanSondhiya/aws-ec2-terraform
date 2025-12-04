variable "env" {
  description = "Define one of the multi-env here dev, stg, prod"
  type        = string
  default     = "prod"
}

variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-02b8269d5e85954ef"
}

variable "subnet_id" {
  description = "Subnet ID where EC2 instance will be created"
  type        = string
  default     = "subnet-xxxxxxxxx"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "MyEC2Instance"
}

variable "vpc_id" {
  description = "VPC ID where security group will be created"
  type        = string
  default     = "vpc-xxxxxxxxx"
}