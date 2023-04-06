# Configure the GCP provider
provider "google" {
  project = var.project_id
  region  = var.region
}

# Configure the NetApp provider
provider "netapp_cvs" {
  api_key = var.api_key
  api_url = var.api_url
}

# Create the storage pool
resource "netapp_cvs_storage_pool" "cvs_storage_pool" {
  storage_pool_name = var.storage_pool_name
  storage_type      = var.storage_type
  region            = var.region
  performance_level = var.performance_level
  # Add any other desired parameters here
}

# Grant the storage pool access to GCP project
resource "netapp_cvs_volume_access_group" "cvs_volume_access_group" {
  access_group_name = var.access_group_name
  region            = var.region
  vpc_name          = var.vpc_name

  lifecycle {
    create_before_destroy = true
  }

  # Add the storage pool to the volume access group
  volume_id = netapp_cvs_storage_pool.cvs_storage_pool.id
}
