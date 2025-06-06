resource "aws_instance" "web" {
  ami           = "ami-006b4a3ad5f56fbd6"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public.id  # Implicitly connects to VPC via subnet
tags = {
  Name = "vpc_instance"
}
}

