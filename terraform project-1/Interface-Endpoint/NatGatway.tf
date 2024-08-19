resource "aws_nat_gateway" "mynat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "myNAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.Interface_IGW]
}
resource "aws_eip" "eip" {
  tags={
    vpc=true
    Name="eip"
  }
  
}