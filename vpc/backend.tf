###########################
# Terraform Configuration #
###########################

terraform {
  backend "s3" {
    bucket         = "demo-tfbucket-265edcd8-0435-7318-45b9-cee40ab8fc89"
    key            = "vpc/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "demo-tflocks-265edcd8-0435-7318-45b9-cee40ab8fc89"
    encrypt        = true
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"
    }
  }

  required_version = ">= 1.7.0"
}

provider "aws" {
  region = "ap-southeast-1"
}
