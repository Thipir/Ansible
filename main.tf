module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "eksvpc"
  cidr = var.eksvpc_id

  azs             = var.eksregion
  private_subnets = var.private_subnets 
  public_subnets  = var.private_subnets

  enable_nat_gateway = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform = "true"
    Environment = "prod"
  }
}
