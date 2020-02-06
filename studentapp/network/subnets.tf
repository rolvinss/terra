resource "aws_subnet" "subnets" {
  count = data.aws_availability_zones.available.count
  cidr_block = cidrsubnet(var.VPC_CIDR,3 ,count.index )
  vpc_id = aws_vpc.main.id
}