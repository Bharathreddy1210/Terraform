resource "aws_route53_record" "record" {
  zone_id = "Z04815523BC94LQKLB87B"
  name    = "${var.component}.roboshop.internal"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}
