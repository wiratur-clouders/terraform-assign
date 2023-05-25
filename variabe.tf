# variable for aws region = us-east-1
variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region"
}
# variable for vpc cidr = 10.0.0.0/16
variable "aws_vpc" {
    type = string
    default = "10.0.0.0/16"
    description = "AWS vpc"
}

# cidrs creation for the subnets
variable "wirbap-pub-sn-cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
 default     = ["10.0.0.0/24", "10.0.2.0/24"]
}
 
variable "wirbap-pri-sn-cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
 default     = ["10.0.3.0/24", "10.0.4.0/24"]
}