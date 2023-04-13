terraform {
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
 }
}
provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my--vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1a", "us-east-1a"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  
  enable_nat_gateway = true
  single_nat_gateway = true


  tags = {
    Terraform   = "true"
    Environment = "prod"
  }
}

