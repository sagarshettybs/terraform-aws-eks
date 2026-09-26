#Terraform settings block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#provider block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region = "ap-south-1"
}

#resource block
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-066c4849e6b3a1e3d" ## Amazon Linux in ap-south-1, update as per your region
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance"
  }
}