variable "name" {
  description = "The name of the storage pool."
  type        = string
}

variable "size" {
  description = "The size of the storage pool in GB."
  type        = number
}

variable "service_level" {
  description = "The service level for the storage pool (standard, premium, or extreme)."
  type        = string
}

variable "region" {
  description = "The GCP region where the storage pool will be deployed."
  type        = string
}

provider "netapp_cvs" {
  api_key      = var.api_key
  api_secret   = var.api_secret
  endpoint     = var.endpoint
  region       = var.region
}

resource "netapp_cvs_storage_pool" "storage_pool" {
  name         = var.name
  size         = var.size
  service_level = var.service_level
  region       = var.region
}
