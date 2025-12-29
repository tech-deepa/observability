variable "ami_id" {
  type        = string
  description = "The ami_id for ec2 instance"
}

variable "instance_type" {
  type        = string
  description = "The type if the ec2 instance"
}

variable "key_name" {
  type        = string
  description = "The Key name of the ec2 instance"
}

variable "region" {
  type        = string
  description = "The region where ec2 instance to be created"

}

variable "volume_size" {
  type        = number
  description = "The size of the volume"
}


variable "instance_count" {
  type        = number
  description = "The number of ec2 instance to be created"

}

variable "subnet_ids" {
  type        = list(string)
  description = "The subnet id of the ec2"

}

variable "tags" {
  type        = map(string)
  default = { }
  description = "The tags for ec2"
}

variable "name" {
  type        = string
  description = "The name of the resources."
}

variable "environment" {
  type        = string
  description = "The environment name for the resources."
}

variable "owner" {
  type        = string
  description = "Owner's name for the resource."
}

variable "cost_center" {
  type        = string
  description = "Cost center identifier for the resource."
}

variable "application" {
  type        = string
  description = "Name of the application related to the resource."
}


variable "vpc_id" {
  type        = string
  description = "ID of the VPC associated with the security group."
}

variable "ingress_from_port" {
  type        = list(number)
  description = "List of starting ports for cidr ingress rules of the EC2 security group."
}

variable "ingress_to_port" {
  type        = list(number)
  description = "List of ending ports for cidr ingress rules of the EC2 security group."
}

variable "ingress_protocol" {
  type        = list(string)
  description = "List of protocols for cidr ingress rules of the EC2 security group."
}

variable "ingress_description" {
  type        = list(string)
  description = "Description for this ingress rule"
}


variable "ingress_cidr_block" {
  type        = list(string)
  description = "List of CIDR blocks for cidr ingress rules of the EC2 security group."
}

variable "egress_from_port" {
  type        = list(number)
  description = "List of starting ports for cidr egress rules of the EC2 security group."
}

variable "egress_to_port" {
  type        = list(number)
  description = "List of ending ports for cidr egress rules of the EC2 security group."
}

variable "egress_protocol" {
  type        = list(any)
  description = "List of protocols for cidr egress rules of the EC2 security group."
}

variable "egress_cidr_block" {
  type        = list(string)
  description = "List of CIDR blocks for cidr egress rules of the EC2 security group."
}

variable "create_ingress_cidr" {
  type        = bool
  description = "Enable or disable CIDR block ingress rules."
}


variable "create_egress_cidr" {
  type        = bool
  description = "Enable or disable CIDR block egress rules."
}
