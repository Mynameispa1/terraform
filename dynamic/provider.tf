

terraform {
  backend "s3" {
    bucket = "pavankumarmuvva"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "pavankumarmuvva"
    
  }
}

provider "aws" {
  region = "us-east-1"
}