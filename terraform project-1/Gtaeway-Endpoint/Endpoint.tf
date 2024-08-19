resource "aws_vpc_endpoint" "gateway" {
  vpc_id        = aws_vpc.General.id
  service_name   = "com.amazonaws.us-east-2.s3"
  vpc_endpoint_type = "Gateway"
  route_table_ids=[aws_route_table.private_RT.id]

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*",
      "Principal": "*"
    }
  ]
}
POLICY

  tags = {
    Name = "my-s3-vpc-endpoint"
  }
}
