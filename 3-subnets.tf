# creating 2 pub-subnets and 2 pri-subnets in the vpc

resource "aws_subnet" "wirbap-pub-sn" {
 count      = length(var.wirbap-pub-sn-cidrs )
vpc_id = aws_vpc.wirbap-demo-vpc.id
 cidr_block = element(var.wirbap-pub-sn-cidrs, count.index)
 
 tags = {
   Name = "wirbap-pub-sn ${count.index + 1}"
 }
}
 
resource "aws_subnet" "wirbap-pri-sn" {
 count      = length(var.wirbap-pri-sn-cidrs)
 vpc_id = aws_vpc.wirbap-demo-vpc.id
 cidr_block = element(var.wirbap-pri-sn-cidrs, count.index)
 
 tags = {
   Name = "wirbap-pri-sn ${count.index + 1}"
 }
}