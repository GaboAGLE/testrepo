terraform {
  backend "gcs" {
    bucket = "bc-terraform-poc-tfstate"
    prefix = "env/dev"
  }
}
