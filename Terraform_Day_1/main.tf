provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "ec2" {
    ami           = "ami-5648885b4544h874"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    tags = {
        Name = "ec2-instance"   #instance name
    }
}