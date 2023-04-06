provider "google" {
  version = "3.5.0"
  credentials = file("cloud-heroes-terraform.json")
  #credentials = "../cloud-heroes-terraform.json"


  project = "cloud-heroes"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
terraform {
  backend "gcs" {
    bucket = "prabu_bucket"
    prefix = "terraform1"
    credentials = "cloud-heroes-terraform.json"
  }
}