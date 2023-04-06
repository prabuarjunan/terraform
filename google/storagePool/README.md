# Terraform Module for Creating a Cloud Volumes Service Storage Pool in GCP

This Terraform module creates a storage pool on NetApp Cloud Volumes Service in GCP and grants access to a GCP project.

## Usage

```terraform
module "cvs_storage_pool" {
  source = "path/to/module"

  api_key            = var.api_key
  api_url            = var.api_url
  project_id         = var.project_id
  region             = var.region
  access_group_name  = "my-access-group"
  vpc_name           = "my-vpc"
  storage_pool_name  = "my-storage-pool"
  storage_type       = "standard"
  performance_level  = "basic"
}