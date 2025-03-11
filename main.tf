terraform {
required_providers {
aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0013d898808600c4a"
  instance_type = "t2.micro"

  tags = {
    Name = "mandara"
  }
}
