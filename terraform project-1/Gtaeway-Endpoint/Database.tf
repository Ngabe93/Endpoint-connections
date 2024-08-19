resource "aws_db_subnet_group" "Ngabe" {
  name       = "my-db-subnet-group"
  subnet_ids = aws_subnet.Darren[*].id

  tags = {
    Name = "My DB Subnet Group"
  }
}
resource "aws_db_instance" "Darren" {
  allocated_storage    = 500
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  db_name                 = "mydb"
  username             = "Lesley"
  password             = "Ngabe67342"
  db_subnet_group_name = aws_db_subnet_group.Ngabe.name
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.Database_SG.id]
}

