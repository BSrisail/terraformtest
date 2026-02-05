provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "ec2_instance" {
  for_each = var.components
  ami                    = var.ami
  instance_type          = each.value.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id

  tags = {
    Name        = each.value.name
    Environment = "Development"
    Terraform   = "true"
  }
}
