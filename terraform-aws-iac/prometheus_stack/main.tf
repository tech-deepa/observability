provider "aws" {
  region = var.region
}

module "ec2" {
  source                 = "../modules/ec2"
  region                 = var.region
  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  instance_count         = var.instance_count
  subnet_idz             = var.subnet_ids
  name                   = var.name
  environment            = var.environment
  owner                  = var.owner
  cost_center            = var.cost_center
  application            = var.application
  vpc_security_group_ids = module.securitygroup.security_group_ids
  volume_size            = var.volume_size

}

module "securitygroup" {
  source      = "../modules/securitygroup"
  region      = var.region
  tags        = var.tags
  name        = var.name
  environment = var.environment
  owner       = var.owner
  cost_center = var.cost_center
  application = var.application
  vpc_id      = var.vpc_id

  ingress_from_port   = var.ingress_from_port
  ingress_to_port     = var.ingress_to_port
  ingress_protocol    = var.ingress_protocol
  ingress_cidr_block  = var.ingress_cidr_block
  ingress_description = var.ingress_description
  create_ingress_cidr = var.create_ingress_cidr

  egress_from_port   = var.egress_from_port
  egress_to_port     = var.egress_to_port
  egress_protocol    = var.egress_protocol
  egress_cidr_block  = var.egress_cidr_block
  create_egress_cidr = var.create_egress_cidr

}