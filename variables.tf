variable "aws_region" {
  description = "AWS region"
  default     = "ap-south-1" # Update your region
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID to use for the instance"
  default     = "ami-0f58b397bc5c1f2e8"  # Amazon Linux 2 in ap-south-1
}

variable "key_name" {
  description = "Name of the  key pair"
  default     = "terraform-key"  # Update this to match your actual key
}

