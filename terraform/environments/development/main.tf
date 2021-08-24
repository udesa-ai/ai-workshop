provider "google" {
  project = var.gcp_project
  region  = var.region
  zone    = var.zone
}

terraform {
  backend "gcs" {}
}

module "ai_workshop" {
  source = "../../modules/workshop"

  region = var.region
  workshop_image = var.workshop_image
  name_prefix = var.name_prefix
  source_ranges = var.source_ranges
  number_of_instances = var.number_of_instances
}