# AWS Certifacate Manager

resource "aws_acm_certificate" "cert" {
  domain_name = var.domain_name
  validation_method = "EMAIL"
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_acm_certificate_validation" "cert" {
  certificate_arn = aws_acm_certificate.cert.arn
}