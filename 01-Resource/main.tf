resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_route53_record" "www" {
  zone_id = "Z088606431E8311EPHBFV"
  name    = "HelloWorld"
  type    = "A"
  ttl     = 30
  records = [aws_instance.web.private_ip]
}