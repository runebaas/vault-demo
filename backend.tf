terraform {
  backend "s3" {
    region         = "eu-west-1"
    bucket         = "boerlage-tf-state-bucket"
    key            = "vault-demo/terraform.tfstate"
    dynamodb_table = "TfLocking"
  }
}
