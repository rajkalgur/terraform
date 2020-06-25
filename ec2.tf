provider "aws" {
  region     = "us-east-1"
}

variable "instancetype" {
  type = string
  default = "t2.micro"
}

variable "ami" {
  default = "ami-09d95fab7fff3776c"
}
resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instancetype

  tags = {
    Name = "my_first ec2_instance"
  }
}
