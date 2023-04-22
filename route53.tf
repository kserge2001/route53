resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.utrains.zone_id
  name    = "cv.utrains.cf"
  type    = "A"
  ttl     = 300
  records = [aws_instance.demo1.public_ip]
}
