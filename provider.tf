provider "google" {
  credentials = file("credentials.json")
  project     = "strong-phalanx-264015"
  region      = "us-central1"
}