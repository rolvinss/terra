provider "aws" {
  region  = "us-east-2"
}

resource "aws_vpc" "main" {
  cidr_block =  var.VPC_CIDR
}