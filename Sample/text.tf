resource "aws_instance" "ec2" {
  ami                    = "ami-0b5a2b5b8f2be4ec2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0c8964a7a7b04adc0"]
  tags = {
    Name = "test"
  }
}






