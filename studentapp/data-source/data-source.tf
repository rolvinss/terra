// TO fetch number of AZ's in the given region

data "aws_availability_zones" "available" {
  state = "available"
}

output "AZS" {
  value = data.aws_availability_zones.available.id
}

// To fetch the list of VPC's
//
//data "aws_vpcs" "vpcs" {}
//
//output "VPCS" {
//  value = data.aws_vpcs.vpcs.ids
//}