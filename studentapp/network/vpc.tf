provider "aws" {
  region  = "us-east-2"
}

resource "aws_vpc" "main" {
  cidr_block =  var.VPC_CIDR
  tags = {
    Name = "${var.DEFAULT_TAGS["PROJECT_NAME"]}-${var.DEFAULT_TAGS["ENV"]}-VPC"
    Created_By: "Terraform"
  }
}

