# AWS Certifacate Manager

resource "aws_acm_certificate" "cert" {
  provider = aws.acm_region
  domain_name = var.domain_name
  validation_method = "EMAIL"
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_acm_certificate_validation" "cert" {
  provider = aws.acm_region
  certificate_arn = aws_acm_certificate.cert.arn
}