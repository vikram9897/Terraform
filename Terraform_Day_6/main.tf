#we have implemented workspaces in this demo.
provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value"
}

variable "instance_type" {
  description = "value"
}
  # type = map(string)

  # default = {
  #   "dev" = "t2.micro"
  #   "stage" = "t2.medium"
  #   "prod" = "t2.micro"
  # }

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = var.ami
  instance_type = var.instance_type
  #   instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro") //used for dynamic value.
}

#cmds used in this demo
# terraform init
# terraform -h
# terraform workspace new dev
# terraform workspace new stage
# terraform workspace new prod
# terraform workspace show
# terraform workspace select prod
# terraform apply --auto-approve
# terraform workspace select dev
# terraform destroy -auto-approve
# terraform workspace -h
# terraform workspace delete stage
# terraform workspace list
# terraform workspace select default