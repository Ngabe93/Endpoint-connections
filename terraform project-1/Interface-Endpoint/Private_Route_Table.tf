resource "aws_route_table" "private_RT" {
  vpc_id = aws_vpc.Interface_Point.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id=aws_nat_gateway.mynat.id
  }

  tags = {
    Name = "Private_route"
  }
}
resource"aws_route_table_association""private_route"{
    route_table_id=aws_route_table.private_RT.id
    subnet_id= aws_subnet.private_subnet.id
}