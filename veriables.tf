variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
  
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t3.micro"
}


#AWS EC2 Instance Type List

variable "Instace_list" {
  description = "List of AWS EC2 Instance Types"
  type        = list(string)
  default     = ["t3.micro", "t3.small", "t3.large"]
  
}

#AWS EX2 Instance Type Map

variable "Instance_map" {
  description = "Map of AWS EC2 Instance Types and their vCPU count"
  type        = map(string)
  default     = {
    "Dev" = "t3.micro",
    "Test" = "t3.small",
    "prod" = "t3.large"
  }
  
}