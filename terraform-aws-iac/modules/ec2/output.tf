output "instance_state" {
    value = aws_instance.ec2.*.instance_state
    description = "The value of ec2 instance state"
}

output "instance_public_dns" {
    value = aws_instance.ec2.*.public_dns
    description = "The Dns public ip of the ec2 instance"
}

output "instance_public_ip" {
  value = aws_instance.ec2.*.public_ip
  description = "The public ip of the ec2 instance"
}
