terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.12.0"
    }
  }

  backend "s3" {
    bucket = "prod-1-test-state-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "prod-1-test-state-table"    
  }
}