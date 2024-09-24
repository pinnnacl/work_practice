terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = var.REGION
}

resource "aws_instance" "toto" {
  ami             = "ami-0a0e5d9c7acc336f1"
  instance_type   = "t2.micro"
  security_groups = ["SG-Jenkins"]
  key_name        = "my"
}

data "aws_vpc" "default" {
  default = true
}
