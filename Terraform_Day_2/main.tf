#multi region cloud implementation.
provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"  #here the region is different.
}

provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"  #here the region is different.
}

resource "aws_instance" "ec2-1" {
  ami = "ami-977t6665f666"
  instance_type = "t2.micro"
  provider = "aws.us-east-1"
  tags = {
        Name = "ec2-east"   #instance name
    }
}

resource "aws_instance" "ec2-2" {
  ami = "ami-7777554dcf54444"
  instance_type = "t2.micro"
  provider = "aws.us-west-2" #we need to mention provider name with alias name i.e aws.us-west-2
  tags = {
        Name = "ec2-west"   #instance name
    }
}