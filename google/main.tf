module "storage_pool" {
  source        = "path/to/module"
  name          = "my-storage-pool"
  size          = 1000
  service_level = "standard"
  region        = "us-west1"
  api_key       = "my-api-key"
  api_secret    = "my-api-secret"
  endpoint      = "https://api.cloud.netapp.com"
}
