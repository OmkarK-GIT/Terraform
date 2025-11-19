resource "aws_security_group" "VPC_ssh" {
  name        = "VPC_SSH"
  description = "VPC SSH inbound traffic and all outbound traffic"

  ingress {
    description      = "SSH from anywhere"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    description      = "All outbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "VPC_SSH"
  }
}

#For Web Traffic

resource "aws_security_group" "VPC_Web" {
  name        = "VPC_Web"
  description = "VPC SSH inbound traffic and all outbound traffic"

  ingress {
    description      = "SSH from anywhere"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "All outbound traffic"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "VPC_Web"
  }
}
