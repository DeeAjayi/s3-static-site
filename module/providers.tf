provider "aws" {
  region = var.aws_region
  version = "~> 2.52"
  profile = var.aws_profile
}

provider "aws" {
  alias = "acm_region"
  profile = var.aws_profile
  region  = "us-east-1"
  version = "~> 2.52"
}