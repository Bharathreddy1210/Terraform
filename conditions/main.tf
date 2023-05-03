resource "aws_instance" "test" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = var.instance_type == "" ? "t3.micro" : "instance_type"
}

variable "create_instances" {}

resource "aws_instance" "test2" {
  count = tobool(var.create_instances) ? 1 : 0
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = var.instance_type == "" ? "t3.micro" : "instance_type"
}

variable "instance_type" {}