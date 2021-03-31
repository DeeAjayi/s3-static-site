module "test-static-site" {
    source = "github.com/DeeAjayi/s3-static-site/module/"

    aws_region = "us-east-1"
    domain_name = "test.dipoajayi.com"
    aws_profile  = "dipo"
    base_domain_name = "dipoajayi.com"
    
}