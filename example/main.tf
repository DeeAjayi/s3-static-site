module "test-static-site" {
    source = "../module"

    aws_region = "us-east-1"
    domain_name = "test.dipoajayi.com"
    aws_profile  = "dipo"
    
}