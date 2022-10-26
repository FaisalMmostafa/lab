provider "aws" {
  region = "us-east-1"
  # access_key =""
  # secret_key =""  
}

resource "aws_instance" "intro" {
  ami                    = "ami-026b57f3c383c2eec"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "spark123"
  vpc_security_group_ids = ["sg-00054e8ac9fdd83cf"]
  tags = {
    Name = "Dove_instance"
  }
}