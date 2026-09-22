terraform {
  backend "s3" {
    bucket = "terraform-state-alura"
    key    = "prod/terraformu.tfstate"
    region = "us-west-2"
  }
}