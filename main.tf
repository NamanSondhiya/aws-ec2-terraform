resource "aws_instance" "Giovani" {
    ami = var.ami
    instance_type = "t2.micro"
    subnet_id = var.subnet_id
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.cloudforma-sgt.id]
    
    tags = {
        Name = var.instance_name
        Environment = var.env
    }
}

resource "aws_security_group" "cloudforma-sgt" {
  name_prefix = "ec2-sg-"
  vpc_id      = var.vpc_id
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}