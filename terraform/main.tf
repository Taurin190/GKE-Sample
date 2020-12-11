provider "google" {
  project = "taurin190"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

resource "google_container_cluster" "primary" {
  name               = "sample"
  location           = "asia-northeast1-a"
  initial_node_count = 1

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      foo = "bar"
    }

    tags = ["foo", "bar"]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}

