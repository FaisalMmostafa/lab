resource "aws_key_pair" "dove-key" {
  key_name   = "dovekey"
  public_key = file(var.PUB_KEY)
}

resource "aws_instance" "dove-web" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.dove-pub-1.id
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = [aws_security_group.dove_stack_sg.id]
  tags = {
    Name    = "my-dove"
    Project = "Dove"
  }
}


resource "aws_ebs_volume" "dove-vol" {
  availability_zone = var.ZONE1
  size              = 3

  tags = {
    Name = "extra-vol-4-dove"
  }
}


resource "aws_volume_attachment" "atta_vol_dove" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.dove-vol.id
  instance_id = aws_instance.dove-web.id

}

output "PublicIP" {

  value = aws_instance.dove-web.public_ip

}



