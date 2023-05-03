resource "aws_instances" "test" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = var.instance_type
}

variable "instance_type" {}
