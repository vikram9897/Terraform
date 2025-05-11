terraform {
  backend "s3" {
    bucket         = "example-s3-demo-xyz" # change this
    key            = "example/terraform.tfstate" # terraform.tfstate file will be created in s3 bucket.
    region         = "us-east-1"
    # encrypt        = true
    # dynamodb_table = "terraform-lock" #used for locking the tfstate file in dynamodb
  }
}