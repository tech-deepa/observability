# EC2 Instance Variables
region         = "ap-south-1"
ami_id         = "ami-02b8269d5e85954ef"
instance_type  = "t2.micro"
key_name       = "prometheuskey"
instance_count = 1
volume_size = 20

# VPC id
vpc_id  = "vpc-0ef6a44f2a33efdca"
subnet_ids     = ["subnet-09022fe2ecf8cf21e"]

# Ec2 Tags
name        = "prometheus-stack"
owner       = "tech-deepa"
environment = "dev"
cost_center = "techdeepa-commerce"
application = "monitoring"

# CIDR Ingress Variables
create_ingress_cidr        = true
ingress_from_port     = [22, 80, 443, 9090, 9100, 9093, 3000]  # List of from ports
ingress_to_port       = [22, 80, 443, 9090, 9100, 9093, 3000]  # List of to ports
ingress_protocol      = ["tcp", "tcp", "tcp", "tcp", "tcp", "tcp", "tcp"]        # Protocol for all rules (you can add more if needed)
ingress_cidr_block         = ["0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0"]
ingress_description   = ["SSH", "HTTP", "HTTPS", "Prometheus", "Node-exporter", "Alert manager", "Grafana"]

# CIDR Egress Variables
create_egress_cidr    = true
egress_from_port = [0]
egress_to_port   = [0]
egress_protocol  = ["-1"]
egress_cidr_block     = ["0.0.0.0/0"]