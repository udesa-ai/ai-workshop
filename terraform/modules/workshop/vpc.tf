resource "google_compute_firewall" "workshop_rules" {
  name        = "allow-${var.name_prefix}--ingress"
  network     = var.compute_network

  description = "Creates firewall rule targeting tagged instances"

  source_ranges = var.source_ranges

  allow {
    protocol  = "tcp"
    ports     = ["8888", "22", "80"]
  }

  target_tags = ["ai-workshop"]
}