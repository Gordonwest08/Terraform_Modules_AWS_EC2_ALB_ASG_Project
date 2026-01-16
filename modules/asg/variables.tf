variable "environment" {
  description = "Environment name (dev, test, prod)"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM instance profile name for EC2"
  type        = string
}

variable "ec2_security_group_id" {
  description = "Security group ID attached to EC2 instances"
  type        = string
}

variable "target_group_arn" {
  description = "ALB target group ARN"
  type        = string
}

variable "common_tags" {
  description = "Common resource tags"
  type        = map(string)
}
