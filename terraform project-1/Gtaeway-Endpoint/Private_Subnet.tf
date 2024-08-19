resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.General.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "private_subnet"
  }
}