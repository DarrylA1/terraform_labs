terraform {
  backend "s3" {
    bucket         = "da-terraform-labs-546-tfstates"
    key            = "terraform_labs/lab_1/terraform.tfstates"
    dynamodb_table = "terraform-lock"

  }
}