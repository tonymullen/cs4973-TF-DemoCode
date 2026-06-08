provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    s3                        = "http://aws:4566"
  }
}
