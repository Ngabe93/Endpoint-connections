resource "aws_vpc_endpoint" "Interface" {
  vpc_id            = aws_vpc.Interface_Point.id
  service_name      = "com.amazonaws.us-east-2.ec2"
  vpc_endpoint_type = "Interface"
  subnet_ids=[aws_subnet.private_subnet.id]
  security_group_ids = [aws_security_group.Private_SG.id]
  private_dns_enabled = true
}