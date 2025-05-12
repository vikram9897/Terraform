provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "ec2" {
  ami = "ami-0nh5535h4ddf115"
  instance_type = "t2.micro"
}

# import {
#   id = "i-887h6648hg2j1"
#   to = aws_instance.ec2
# }



#cmd used in this demo
# terraform plan -generate-config-out=generated_resources.tf  //this will generate .tf file.
# terraform import aws_instance.ec2 i-887h6648hg2j1  //generates .tfstate file of existing aws res.