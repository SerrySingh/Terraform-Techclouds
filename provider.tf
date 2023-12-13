terraform {
  required_providers {
   aws = {
     source = "hashicorp/aws"
     version = "~> 4.16"
   }
 }

  required_version = ">= 0.14.0, < 0.15.0
  backend "s3" {
    bucket = "serrylalotra1"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
 region  = "us-east-1"
 profile = "default"
}
