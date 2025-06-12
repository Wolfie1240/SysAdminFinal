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
  region = "us-west-2"
}

resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "ssh and minecraft"
  vpc_id      = "vpc-064f25f6e2d2e9740"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # ssh from only your own IP
  }

  ingress {
    from_port   = 25565
    to_port     = 25565
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # allow all
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-04999cd8f2624f834"
  instance_type = "t3.small"
  key_name = "DomainController"
  security_groups = [aws_security_group.web_sg.name]

  tags = {
    Name = var.instance_name
  }
}

