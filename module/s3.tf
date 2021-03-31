# Root S3 Bucket Setup
resource "aws_s3_bucket" "main" {
  bucket = var.domain_name
  acl    = "public-read"
  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::${var.domain_name}/*"]
    }
  ]
}
POLICY

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}

# WWW-Redirect S3 Bucket SetUp
resource "aws_s3_bucket" "www" {
  bucket = "www.${var.domain_name}"
  acl    = "public-read"
  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::www.${var.domain_name}/*"]
    }
  ]
}
POLICY

  website {
    redirect_all_requests_to = "https://${var.domain_name}"
  }
}