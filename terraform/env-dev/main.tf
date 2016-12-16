resource "aws_route53_record" "dashboards" {
  zone_id = "${var.aws_dns_zone_id}"
  name = "${var.dashboards_dns}."
  type = "A"
  ttl = "60"
  records = [""]
}

resource "aws_route53_record" "api" {
  zone_id = "${var.aws_dns_zone_id}"
  name = "${var.api_dns}."
  type = "A"
  ttl = "60"
  records = [""]
}

resource "aws_instance" "jupyter-gateways" {
  # Amazon ECS optimised ami
  ami = "ami-ba346ec9"
  instance_type = "t2.micro"
  
  key_name = "gateway"
  security_groups = ["default"]

  tags {
    Name = "${var.environment}-jupyter-gateways"
    environoment = "dev"
  }
}
