terraform {
  backend "s3" {
    bucket         = "lsg-terraform-s3-bucket-us-east-1" # The S3 bucket to store the Terraform state file
    key            = "dev/devops-cicd/terraform.tfstate"
    region         = "us-east-1" # The following line is used to lock the state file to prevent concurrent modifications
    dynamodb_table = "terraform-lock-us-east-1" # The DynamoDB table to use for state locking
    encrypt        = true
  }
}