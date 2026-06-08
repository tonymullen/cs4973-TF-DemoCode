terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>4.16"
    }
  }
}

provider "aws" {

  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
  region     = "us-west-1"

  #s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true


  endpoints {
    s3       = "http://localhost:4566"
    dynamodb = "http://localhost:4566"
  }

}

terraform {
  backend "s3" {
    bucket = "backend-bucket-iac-terraform"
    key    = "terraform.tfstate"
    region = "us-west-1"

    dynamodb_table = "terraform-state-locking"

    # Above would be sufficient for actual AWS S3 usage
    # The attributes below are necessary for the localstack mock
    endpoint                    = "http://s3.localhost.localstack.cloud:4566"
    iam_endpoint                = "http://localhost:4566"
    sts_endpoint                = "http://localhost:4566"
    dynamodb_endpoint           = "http://localhost:4566"

    # s3_use_path_style           = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    # skip_requesting_account_id  = true
  }
}
