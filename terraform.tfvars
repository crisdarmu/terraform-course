virginia_cidr = "10.10.0.0/16"
# public_subnet_cidr = "10.10.0.0/24"
# private_subnet_cidr = "10.10.1.0/24"
subnets = ["10.10.0.0/24", "10.10.1.0/24"]

common_tags = {
  "env"          = "Dev"
  "owner"        = "Cristian Arias"
  "cloud"        = "aws"
  "project_name" = "cerberus"
  "region"       = "Virginia"
}

sg_ingress_cidr = "0.0.0.0/0"

ec2_specs = {
  "ami"               = "ami-0c3389a4fa5bddaad"
  "instance_type"     = "t3.micro"
  "availability_zone" = "us-east-1a"
}

enable_monitoring = false

ingress_ports = [ 22, 80, 443 ]