resource "aws_security_group" "aws_sg_ec2" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.create_ingress_cidr ? toset(range(length(var.ingress_from_port))) : []

    content {
      from_port = var.ingress_from_port[ingress.key]
      to_port = var.ingress_to_port[ingress.key]
      protocol = var.ingress_protocol[ingress.key]
      cidr_blocks = var.ingress_cidr_block
      description = var.ingress_description[ingress.key]

    }

  }

  dynamic "egress" {
    for_each = var.create_egress_cidr ? toset(range(length(var.egress_from_port))) : []
    content {
      from_port = var.egress_from_port[egress.key]
      to_port = var.egress_to_port[egress.key]
      protocol = var.egress_protocol[egress.key]
      cidr_blocks = var.egress_cidr_block

    }

  }

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
