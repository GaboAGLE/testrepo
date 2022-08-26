terraform {
  backend "gcs" {
    bucket = "fresh-capsule-324021-tfstate"
    prefix = "env/dev"
  }
}