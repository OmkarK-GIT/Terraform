#Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
  }
}  
}


#Provider Block

provider "aws" {
  region = var.aws_region
}


#Resource Block

resource "aws_instance" "My-First-Instance" {
  ami = ("ami-08982f1c5bf93d976")
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.VPC_ssh.id, aws_security_group.VPC_Web.id]
  count = 4

  tags = {
    Name = "My-First-${count.index}"
  }
  
}
