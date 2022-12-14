provider "google" {
  project     = "bc-terraform-poc"

}

resource "google_compute_instance" "test" {
  name         = "test1"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }
  
  network_interface {
    network = "test-vpc"
    subnetwork="vm-subnet"
  }


  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

 
}
