terraform {
cloud {
    organization = "Ethereal_tutorial"

    workspaces {
      name = "terra"
    }
  }  
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "log_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "OrderIntake_App1.080927"
  }
}