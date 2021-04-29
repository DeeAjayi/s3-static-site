provider "aws" {
  region = "eu-west-1"
  profile = "telios"
}

provider "aws" {
  alias = "acm_region"
  profile = "telios"
  region  = "us-east-1"
}