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
