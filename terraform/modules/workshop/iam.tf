resource "google_service_account" "workshop_sa" {
  account_id   = "workshop"
  display_name = "Workshop Service Account"
}