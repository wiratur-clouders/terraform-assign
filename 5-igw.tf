# creating wirpa-vpc-igw 
resource "aws_internet_gateway" "wirbap-vpc-igw" {
 vpc_id = aws_vpc.wirbap-demo-vpc.id
  tags = {
    "Name" = "wirbap-vpc-igw" 

    }
}