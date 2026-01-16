terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "terraform-state-103015027822-us-east-2"
    key            = "prod/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.30.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

