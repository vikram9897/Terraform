provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
    source = "./modules/ec2_instance" //here values are passed from Task_2 main.tf to Task_2/modules/ec2_instance main.tf
    ami_value = "ami-33454646j6666"
    instance_type_value = "t2.micro"
}