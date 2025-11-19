terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.21.0"
    }
  }
  backend "s3" {
    bucket         = "boa-terraform-tm-bucket"
    key            = "prod-terry/terrym/terraform.tfstate"
    encrypt        = true
    region         = "us-east-1"
    dynamodb_table = "terry-lock-table-db"
  }
}

provider "aws" {
  # Configuration options
  region = var.my_aws_region
}