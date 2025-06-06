resource "aws_route_table_association" "route_a" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

