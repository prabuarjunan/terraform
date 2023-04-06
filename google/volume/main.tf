# Configure the NetApp provider
provider "netapp_cvs" {
  api_key   = var.api_key
  api_secret = var.api_secret
  endpoint = var.endpoint
  region    = var.region
}

# Create the volume
resource "netapp_cvs_volume" "cvs_volume" {
  name          = var.name
  size          = var.size
  service_level = var.service_level
  region        = var.region
  storage_pool_id = var.storage_pool_id
}

# Output the ID of the created volume
output "volume_id" {
  value = netapp_cvs_volume.cvs_volume.id
}
