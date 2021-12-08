terraform {
  required_providers {
    aws = {
     source = "hashicorp/aws"
     version = "~>3.27"
  }
}

  required_version = ">=0.14.9"

}
 

  provider  "aws" {
    profile = "default"
    region = "us-east-2"
 }

  resource "aws_s3_bucket" "s3bucketnew" {
    bucket = "newcodepushtest"
    acl = "public-read-write"
  
    tags = {
     name = "testDEV"
     Environment  = "DEV"
  }
 
} 
   resource "aws_s3_bucket_object" "s3bucketnew" {
     bucket = "newcodepushtest"
     key = "adding objectnew"
     source = "/terraform/test.php"

     etag = filemd5("/terraform/test.php")
} 
