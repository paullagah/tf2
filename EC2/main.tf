resource "aws_instance" "manager" {
  ami                         = var.ami
  instance_type               = var.instance
  key_name                    = var.key
  subnet_id                   = var.subnet_a
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.vpc_security_group_ids]
  user_data                   = var.user_data

  tags = {
    Name = var.name
  }

}

