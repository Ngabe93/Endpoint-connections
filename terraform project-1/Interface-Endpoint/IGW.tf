resource "aws_internet_gateway" "Interface_IGW" {
  vpc_id = aws_vpc.Interface_Point.id

  tags = {
    Name = "IGW"
  }
}