provider "google" {
  project = var.gcp_project
  region  = var.region
  zone    = var.zone
}

module "tfstate" {
  source = "../../../modules/tfstate"
  
  location = var.location
  storage_class = var.storage_class
  bucket_name = var.bucket_name
}
