provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformbuckettodaysun" {
  bucket = "terraformbuckettodaysunny"
}
terraform {
  backend "s3" {
    bucket         = "terraformbuckettodaysunny"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}