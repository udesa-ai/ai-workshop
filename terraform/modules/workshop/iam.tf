resource "google_service_account" "workshop_sa" {
  account_id   = var.name_prefix
  display_name = "Workshop Service Account"
}