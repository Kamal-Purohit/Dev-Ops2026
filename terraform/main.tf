
# S3 bucket module
module "s3" {
  source      = "./modules/s3"
  bucket_name = "kamal-demo-bucket"
}

# VPC module (fetches default VPC + subnets)
module "vpc" {
  source = "./modules/vpc"
}

# Security group module
module "sg" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

# IAM role module
module "iam" {
  source = "./modules/iam"
}

# EC2 module (creates 2 Ubuntu instances)
module "ec2" {
  source           = "./modules/ec2"
  subnet_ids       = module.vpc.subnet_ids
  sg_id            = module.sg.sg_id
  instance_profile = module.iam.instance_profile
}
