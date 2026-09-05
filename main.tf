terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project      = "project-c1c05bf8-90d9-4f7f-a17"
  region       = "us-central1"
  access_token = var.access_token
}

resource "google_storage_bucket" "example" {
  name     = "sdnexussolutions-ship-it-example-bucket"
  location = "US"
  project  = "project-c1c05bf8-90d9-4f7f-a17"

  uniform_bucket_level_access = true
}
