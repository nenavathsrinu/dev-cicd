terraform {
  backend "s3" {
    bucket         = "lsg-terraform-s3-bucket"
    key            = "dev/devops-cicd/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
