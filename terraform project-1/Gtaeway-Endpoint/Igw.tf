resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.General.id

  tags = {
    Name = "IGW"
  }
}