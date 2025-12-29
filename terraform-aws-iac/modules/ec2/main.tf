resource "aws_instance" "ec2"{
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    region = var.region
    count = var.instance_count
    user_data = file("${path.module}/userdata.sh")

root_block_device {
  volume_size = var.volume_size
  volume_type = "gp2"
}

vpc_security_group_ids = var.vpc_security_group_ids

subnet_id = element(var.subnet_idz,count.index % length(var.subnet_idz))

tags = merge(
    {
        Name        = "${var.environment}-${var.application}"
        Environment = var.environment
        Owner       = var.owner
        CostCenter  = var.cost_center
        Application = var.application
    },
    var.tags 
    )

}
