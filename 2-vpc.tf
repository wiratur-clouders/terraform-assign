# configuring the vpc
resource "aws_vpc" "wirbap-demo-vpc" {
    cidr_block = var.aws_vpc
    tags = {
      "Name" = "wirbap-demo-vpc"
    }
}