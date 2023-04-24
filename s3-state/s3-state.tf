terraform {
  backend "s3" {
    bucket = "devopspractice-7"
    key = "s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0c8964a7a7b04adc0"]
  tags = {
    Name = "test-1"
  }
}
