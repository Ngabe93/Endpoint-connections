resource "aws_security_group" "Public_Sg" {
  
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.Interface_Point.id
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress{
    from_port=22
    to_port=22
    protocol="tcp"
    cidr_blocks=["0.0.0.0/0"]
  }
  tags = {
    Name = "public_sg"
  }
}
