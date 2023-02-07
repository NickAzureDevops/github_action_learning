terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
   }
 }
 
 backend "s3" {
   region = "us-west-2"
   key    = "terraform.tfstate"
 }
}
 
provider "aws" {
 region = "us-west-2"
}