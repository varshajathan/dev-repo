locals {
  decoded_creds = base64decode(var.gcp_credentials)
}

provider "google" {
  credentials = local.decoded_creds
  project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "default" {
  //name         = "web-server"
  name         = var.names
  machine_type = var.machine_type
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
