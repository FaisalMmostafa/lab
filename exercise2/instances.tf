resource "aws_instance" "dove-instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  # availability_zone      = var.ZONE1
  key_name               = "plz123"
  vpc_security_group_ids = ["sg-0781e63529e06aae7"]
  tags = {
    Name = "Dove_instance2"
  }
}