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

variable "instance_name" {
  description = "Name for the EC2 instance"
  type        = string
  default     = "MyEC2Instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "root_volume_size" {
  type        = number
  default     = 10
}

variable "vpc_id" {
  description = "VPC ID where security group will be created"
  type        = string
  default     = "XXX"
}

variable "subnet_id" {
  description = "Subnet ID where EC2 instance will be created"
  type        = string
  default     = "XXX"
}