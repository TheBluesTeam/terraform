// Configure the Google Cloud provider
provider "google" {
  credentials = file("credentials.json")
  project     = "strong-phalanx-264015"
  region      = "us-central1"
}

// Create a GCE instance
resource "google_compute_instance" "default" {
  name         = "terraform-test"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}