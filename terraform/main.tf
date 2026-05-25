
# VPC module (fetches default VPC + subnets)
module "VPC" {
  source = "./VPC"
}

# Security group module
module "security_group" {
  source = "./security_group"
  vpc_id = module.vpc.vpc_id
}

# IAM role module
module "IAM_Role" {
  source = "./IAM_Role"
}

# EC2 module (creates 2 Ubuntu instances)
module "EC2" {
  source           = "./EC2"
  subnet_ids       = module.vpc.subnet_ids
  sg_id            = module.sg.sg_id
  instance_profile = module.iam.instance_profile
}
