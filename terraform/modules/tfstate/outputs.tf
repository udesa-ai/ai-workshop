output "bucket_name" {
  description = "Cloud Storage backend bucket name"
  value       = google_storage_bucket.tfstate-bucket.id
}