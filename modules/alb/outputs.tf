output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}

output "target_group_arn" {
  value = aws_lb_target_group.tg.arn
}

output "ec2_sg_id" {
  value = aws_security_group.ec2_sg.id
}

output "alb_arn_suffix" {
  value = aws_lb.alb.arn_suffix
}
