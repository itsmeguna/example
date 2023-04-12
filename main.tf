module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0aa2b7722dc1b5612"
  instance_type          = "t2.micro"
  key_name               = "user1"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
