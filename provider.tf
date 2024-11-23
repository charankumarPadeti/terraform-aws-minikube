terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.54.0"    # Aws provider version , not terraform version
    }
  }

  backend "s3" {
    bucket = "charanfun-remote-state"
    key    = "minikube"
    region = "us-east-1"
    dynamodb_table = "charan.fun-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}