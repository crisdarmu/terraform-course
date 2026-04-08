variable "virginia_cidr" {
  description = "CIDR Virginia"
  type        = string
  sensitive   = false # To avoid showing the value in the plan
}

# variable "public_subnet_cidr" {
#   description = "CIDR Public Subnet"
#   type        = string
#   sensitive   = false
# }

# variable "private_subnet_cidr" {
#   description = "CIDR Private Subnet"
#   type        = string
#   sensitive   = false
# }

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
  sensitive   = false
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  sensitive   = false
}

variable "sg_ingress_cidr" {
  description = "CIDR for the security group"
  type        = string
  sensitive   = false
}

variable "ec2_specs" {
  description = "Specifications for the EC2 instance"
  type        = map(string)
  sensitive   = false
}

variable "enable_monitoring" {
  description = "Enable monitoring instance"
  type        = bool
}

variable "ingress_ports" {
  description = "List of ports to allow in the security group"
  type        = list(number)
}

variable "access_key" {
  
}

variable "secret_key" {
  
}