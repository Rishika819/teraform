terraform {

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "4.33.0"

    }

  }

}
 
provider "aws" {

  region     = "ap-south-1"

  access_key = "accesskeyusedtobehere"   

  secret_key = "secretkey"   

}
 
resource "aws_s3_bucket" "my_bucket" {

  bucket = "rishika21terraformbucket" 

  tags = {

    Name        = "MyS3Bucket"

    Environment = "Production"

  }

}
 