provider "google" {
  credentials = "${file("credentials.json")}"
  region      = "us-central1"
  project     = "vivid-motif-197802"
}

resource "google_container_cluster" "prod-candy-cluster" {
  name               = "prod-candy"
  zone               = "us-central1-c"
  initial_node_count = 3
  
  node_config {
    service_account = "candy-k8s-sa@vivid-motif-197802.iam.gserviceaccount.com" 
  }
}

# The following outputs allow authentication and connectivity to the GKE Cluster.
output "client_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.primary.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}"
}

resource "google_compute_disk" "mysql-disk" {
  name  = "mysql-disk"
  zone  = "us-central1-c"
  size  = "200"
}

resource "google_compute_disk" "wordpress-disk" {
  name  = "wordpress-disk"
  zone  = "us-central1-c"
  size  = "200"
}

