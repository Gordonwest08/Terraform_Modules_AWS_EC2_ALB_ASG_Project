variable "instance_type" {
  type        = string
  description = "EC2 instance type"  
}

variable "environment" {
  type        = string
  description = "Environment name"
}

variable "aws_region" {
  type = string
}

# Test CI pipeline