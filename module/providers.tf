provider "aws" {
  region = var.aws_region
  version = "~> 2.52"
  profile = var.aws_profile
}