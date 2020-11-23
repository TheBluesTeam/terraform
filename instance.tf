// Configure the Google Cloud provider
provider "google" {
  credentials = file("credentials.json")

  project     = "strong-phalanx-264015"
  region      = "us-central1"
}

// Create a GCE instance
resource "google_compute_instance" "default" {
  name         = "terraform"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}