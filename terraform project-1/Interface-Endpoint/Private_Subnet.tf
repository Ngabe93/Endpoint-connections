resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.Interface_Point.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private_subnet"
  }
}