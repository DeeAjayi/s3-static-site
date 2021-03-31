data "aws_route53_zone" "base" {
  name         = var.base_domain_name
}

resource "aws_route53_zone" "primary" {
  name = var.domain_name
}

resource "aws_route53_record" "main" {
  zone_id = aws_route53_zone.primary.zone_id
  name = var.domain_name
  type = "A"
  alias {
    name = aws_cloudfront_distribution.prod_distribution.domain_name
    zone_id = aws_cloudfront_distribution.prod_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "aws_sub_zone_ns" {
  zone_id = data.aws_route53_zone.base.zone_id
  name    = var.domain_name
  type    = "NS"
  ttl     = "30"
  records = aws_route53_zone.primary.name_servers
}