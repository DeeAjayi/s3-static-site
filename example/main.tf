module "test-static-site" {
    source = "github.com/DeeAjayi/s3-static-site/module"

    aws_profile  = "dipo"
    aws_region = "us-east-1"
    base_domain_name = "dipoajayi.com"
    domain_name = "test.dipoajayi.com"
}

module "eu-site" {
    source = "github.com/DeeAjayi/s3-static-site/module"

    aws_profile  = "dipo"
    aws_region = "eu-west-1"
    base_domain_name = "dipoajayi.com"
    domain_name = "eu.dipoajayi.com"
}