# nat_gateway.tf
resource "aws_eip" "nat" {
  tags = {
    Name = "nat_eip"
  }
}

resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id  # Must be a public subnet

  tags = {
    Name = "gw NAT"
  }

  depends_on = [aws_internet_gateway.igw]
}
