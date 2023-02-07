terraform {
  required_providers {
    aws = {

      source  = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "terraform-dev.tfstate"
    key    = "terraform.statefile"
    region = "eu-west-2"
  }
}

 