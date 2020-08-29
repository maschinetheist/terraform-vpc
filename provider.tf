provider "aws" {
  region     = "us-west-2"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket = "mpietru-codebuild-terraform-us-west-2"
    dynamodb_table = "terraform-state-lock-dynamo"
    key = "terraform-vpc/terraform.tfstate"
    region = "us-west-2"
  }
}
