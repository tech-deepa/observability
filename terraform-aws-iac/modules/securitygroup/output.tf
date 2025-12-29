output "security_group_ids" {
  description = "ID of the security group."
  value       = aws_security_group.aws_sg_ec2.*.id
}