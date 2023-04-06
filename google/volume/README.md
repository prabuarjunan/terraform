# Terraform Module for Creating a Cloud Volumes Service Volume in GCP

This Terraform module creates a volume on NetApp Cloud Volumes Service in GCP.

## Usage

```terraform
module "cvs_volume" {
  source = "path/to/module"

  api_key          = var.api_key
  api_secret       = var.api_secret
  endpoint         = var.endpoint
  region           = var.region
  name             = "my-volume"
  size             = "1TiB"
  service_level    = "basic"
  storage_pool_id  = module.cvs_storage_pool.storage_pool_id
}


#Note that this example assumes that you have already created the storage pool using a separate Terraform module. You will need to replace `module.cvs_storage_pool.storage_pool_id` with the actual ID of the storage pool resource.
