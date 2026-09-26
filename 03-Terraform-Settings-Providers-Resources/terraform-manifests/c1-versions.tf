#Terraform Block
terraform {
  required_version = "~> 1.15.3" // allows 1.16.4 to be used, it will allow 1.16.xx but not 1.17.0
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#Provider Block
provider "aws" {
  region  = "ap-south-1"
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
}

#Resource Block
