resource "aws_route_table" "wirbap-pub-rt" {
  vpc_id = aws_vpc.wirbap-demo-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.wirbap-vpc-igw.id
  }

  tags = {
    Name = "wirbap-pub-rt"
  }
}

