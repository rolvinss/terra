module "NETWORK" {
  source = "../../network"
  VPC_CIDR = var.VPC_CIDR
  TAGS= var.DEFAULT_TAGS
}