terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "ap-northeast-1" # 東京リージョン
}

resource "aws_instance" "example" {
  ami           = "ami-0c3fd0f5d33134a76" # Amazon Linux 2023 (東京リージョン)
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-ec2-example"
  }
}
