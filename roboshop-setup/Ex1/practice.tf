data "aws_ami" "ami"  {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["631186618481"]
}

resource "aws_instances" "frontend" {
  count = 5
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_securtiy_group_ids = ["sg-0c8964a7a7b04adc0"]
}