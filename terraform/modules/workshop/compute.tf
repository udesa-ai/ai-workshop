resource "google_compute_instance_template" "workshop_template" {
  name        = "${var.name_prefix}-template"
  description = "This template is used to create workshop server instances"

  tags = ["ai-workshop"]

  labels = {
    created_by = "terraform"
  }

  machine_type         = var.machine_type
  can_ip_forward       = false

  disk {
    source_image      = var.workshop_image
    auto_delete       = true
    boot              = true
  }

  network_interface {
    network = var.compute_network

    access_config {
      network_tier = "PREMIUM"
    }
  }

  service_account {
    email  = google_service_account.workshop_sa.email
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_health_check" "autohealing" {
  name                = "${var.name_prefix}-autohealing-health-check"
  check_interval_sec  = 5
  timeout_sec         = 5
  healthy_threshold   = 2
  unhealthy_threshold = 10 # 50 seconds

  http_health_check {
    request_path = "/healthz"
    port         = "8080"
  }
}

resource "google_compute_region_instance_group_manager" "workshop_igm" {
  name = "${var.name_prefix}-igm"

  base_instance_name         = var.name_prefix
  region                     = var.region
  distribution_policy_zones  = var.distribution_zones

  version {
    instance_template = google_compute_instance_template.workshop_template.id
  }

  target_size  = var.number_of_instances

  auto_healing_policies {
    health_check      = google_compute_health_check.autohealing.id
    initial_delay_sec = 300
  }
}