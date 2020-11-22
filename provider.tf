terraform {
  required_providers {
    secberus = {
      versions = ["0.1"]
      source = "hashicorp.com/rexbelli/secberus"
    }
  }

  backend "gcs" {
    bucket  = "tf-state-secberus"
    prefix  = "terraform/state"
  }
}

provider "secberus" {}
