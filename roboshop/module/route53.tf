resource "aws_route53_record" "www" {
  zone_id = "Z0427081128KYN3HS49UP"
  name    = var.COMPONENT
  type    = "A"
  ttl     = 300
  records = [aws_spot_instance_request.ec2.private_ip]
}