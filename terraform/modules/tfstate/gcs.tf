resource "random_id" "server" {
  byte_length = 8
}

resource "google_storage_bucket" "tfstate-bucket" {
  name          = "${var.bucket_name}-tfstate-${random_id.server.dec}"
  location      = var.location
  force_destroy = true

  uniform_bucket_level_access = true

  storage_class = var.storage_class

  versioning {
    enabled = true
  }

  labels = {
    created_by = "terraform"
  }
}