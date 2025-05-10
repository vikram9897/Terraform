provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = var.ami_value //here values are passed from Task_2 main.tf to Task_2/modules/ec2_instance main.tf
    instance_type = var.instance_type_value
    # subnet_id = var.subnet_id_value
}