resource "google_service_account" "default" {
  account_id   = 1077879
  display_name = "Service Account"
}

resource "google_compute_instance" "default" {
  name         = var.machine_name
  machine_type = var.wkstation_machine_type
  zone         = var.zone
  desired_status = var.desired_status

#   tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.os_image
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

#   metadata = {
#     foo = "bar"
#   }

#   metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}