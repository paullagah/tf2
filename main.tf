provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_credentials

}

module "paul_VPC" {
  source = "./VPC"
}

module "paul_SG" {
  source = "./SG"
  vpc_id = module.paul_VPC.vpc_id
}

module "paul_instance" {
  source                 = "./EC2"
  subnet_a              = module.paul_VPC.subnet_a_id
  vpc_security_group_ids = module.paul_SG.SG_id
}