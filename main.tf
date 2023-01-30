terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "app_server" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.micro"
  key_name      = "iac-study"
  tags = {
    Name = "Terraform Ansible Python"
  }
}
