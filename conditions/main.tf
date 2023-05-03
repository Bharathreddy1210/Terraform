resource "aws_instances" "test" {
  ami = ""
  instance_type = var.instance_type
}

variable "instance_type" {}
