resource "aws_instance" "frontend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0198935c644f120f6"]
  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z088606431E8311EPHBFV"
  name    = "frontend.malleswaridevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0198935c644f120f6"]
  tags = {
    Name = "backend"
  }
}
resource "aws_route53_record" "backend" {
  zone_id = "Z088606431E8311EPHBFV"
  name    = "backend.malleswaridevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0198935c644f120f6"]
  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z088606431E8311EPHBFV"
  name    = "mysql.malleswaridevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}