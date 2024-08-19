resource "aws_subnet" "Darren" {
  count             = 2
  vpc_id            = aws_vpc.General.id
  cidr_block        = "10.0.4${count.index}.0/24"
  availability_zone = element(data.aws_availability_zones.available.names, count.index)
}
  data "aws_availability_zones" "available" {

  }