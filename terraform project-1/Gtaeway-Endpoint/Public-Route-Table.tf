resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.General.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  tags = {
    Name = "public_route"
    
  }
}
resource"aws_route_table_association""public_route"{
    route_table_id=aws_route_table.public_route.id
    subnet_id=aws_subnet.public_subnet.id
}