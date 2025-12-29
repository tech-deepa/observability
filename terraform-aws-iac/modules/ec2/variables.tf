variable "ami_id" {
  type = string
  description = "The ami_id for ec2 instance"
}

variable "instance_type"{
    type = string
    description = "The type if the ec2 instance"
}

variable "key_name" {
  type        = string
  description = "The Key name of the ec2 instance"
}

variable "region" {
    type = string
    description = "The region where ec2 instance to be created"
  
}

variable "volume_size" {
  type = number
  description = "The size of the volume"
}

variable "vpc_security_group_ids" {
    type = list(string)
    description = "the List of the secuirty group id"
}

variable "instance_count" {
    type = number
    description = "The number of ec2 instance to be created"
  
}

variable "subnet_idz" {
    type= list(string)
    description = "The subnet id of the ec2"
  
}

variable "tags" {
    default = { }
    type = map(string)
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