resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.General.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public_subnet"
    }
}