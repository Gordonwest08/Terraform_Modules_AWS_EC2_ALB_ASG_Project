locals {
  common_tags = {
    Project     = "terraform-ec2"
    Environment = var.environment
    Owner       = "gordon_west"
  }
}
