module "ec2" {
  source = "./ec2"
  SG_ID = module.sg.SG_ID
}

module "sg" {
  source = "./sg"
}

terraform {
  backend "s3" {
    bucket = "terraform-bucket-88"
    key = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
