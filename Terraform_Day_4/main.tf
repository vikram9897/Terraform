#we'll store terraform.tfstate file in s3 bucket and lock it using DynamoDB.
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec-2" {
  instance_type = "t2.micro"
  ami = "ami-988787gh8668hj866" # change this
}

/*resource "aws_s3_bucket" "s3_bucket" { #used to create s3 bucket resource
  bucket = "example-s3-demo-xyz" # change this
}*/

# resource "aws_dynamodb_table" "terraform_lock" { #used for locking the tfstate file
#   name           = "terraform-lock"
#   billing_mode   = "PAY_PER_REQUEST"
#   hash_key       = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }