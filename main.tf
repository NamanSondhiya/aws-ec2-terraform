resource "aws_instance" "Giovani" {
    ami                         = var.ami
    instance_type               = var.instance_type
    subnet_id                   = var.subnet_id
    key_name                    = "ubut"
    associate_public_ip_address = true
    vpc_security_group_ids      = [aws_security_group.cloudforma-sgt.id]

    root_block_device {
      volume_size = var.root_volume_size
      volume_type = "gp3"
    }
    
    tags = {
        Name        = var.instance_name
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