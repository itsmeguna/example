terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.62.0"
    }
  }
}

provider "aws"{
    region= "us-east-1"

}
resource "aws_instance" "public_instance" {
    ami                     = "ami-0aa2b7722dc1b5612"
    instance_type           = "t2.micro"
}
