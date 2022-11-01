provider "google" {
  project = "terrrm-up-rung-srbh-17"
  zone    = "us-central1-a"

}

resource "google_project_service" "available_apis" {
  service = "compute.googleapis.com"
}

resource "google_compute_instance" "default" {
  name         = "default"
  machine_type = "e2-medium"
  tags         = ["foo", "bar"]
  boot_disk {
    initialize_params {
      image  = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
  network_interface {
    network = "default"
  }
}

