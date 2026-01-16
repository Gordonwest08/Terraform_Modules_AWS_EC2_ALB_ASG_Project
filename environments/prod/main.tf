module "ami" {
  source = "../../modules/ami"
}

module "iam" {
  source = "../../modules/iam"
  environment = var.environment
}

module "alb" {
  source      = "../../modules/alb"
  environment = var.environment
  common_tags = local.common_tags
}

module "asg" {
  source                =  "../../modules/asg"
  environment           = var.environment
  instance_type         = var.instance_type
  ami_id                = module.ami.ami_id
  iam_instance_profile  = module.iam.instance_profile_name
  ec2_security_group_id = module.alb.ec2_sg_id
  target_group_arn      = module.alb.target_group_arn
  common_tags           = local.common_tags
}

module "cloudwatch" {
  source         = "../../modules/cloudwatch"
  asg_name       = module.asg.asg_name
  alb_arn_suffix = module.alb.alb_arn_suffix
  aws_region     = var.aws_region
}
