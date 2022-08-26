resource "google_service_account" "default" {
  account_id   = "service_account_id"
  display_name = "Service Account"
}

resource "google_compute_instance" "default" {
  vm_name      = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone
  project_id   = var.project_id

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

  }

  metadata = {
    foo = "bar"
  }

   service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}
