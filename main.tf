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
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.ssh_access.name]

  tags = {
    Name = var.instance_name
  }
}

resource "aws_security_group" "ssh_access" {
  name        = "allow_ssh"
  description = "Allow SSH access"
  vpc_id      = null # デフォルトVPCを使用する場合

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

security_groups = [aws_security_group.ssh_access.name]
