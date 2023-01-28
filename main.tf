terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }

    required_version = ">= 0.14.9"
}

provider "aws" {    
  region  = "us-west-2"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "app_server" {
  ami           = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  key_name = "iac-alura"

  tags = {
    Name = "Primeira instancia"
  }
}