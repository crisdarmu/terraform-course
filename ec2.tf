variable "instances" {
  description = "Instance name"
  type        = set(string)
  default     = ["apache"]
}


resource "aws_instance" "public_ec2_instance" {
  for_each               = var.instances
  ami                    = var.ec2_specs["ami"]
  instance_type          = var.ec2_specs["instance_type"]
  availability_zone      = var.ec2_specs["availability_zone"]
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key_virginia.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("scripts/userdata.sh")
  tags = {
    Name = "${each.value}-${local.sufix}"
  }
}

resource "aws_instance" "public_ec2_monitoring" {
  count                  = var.enable_monitoring ? 1 : 0
  ami                    = var.ec2_specs["ami"]
  instance_type          = var.ec2_specs["instance_type"]
  availability_zone      = var.ec2_specs["availability_zone"]
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key_virginia.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("scripts/userdata.sh")
  tags = {
    Name = "monitoring-${local.sufix}"
  }
}