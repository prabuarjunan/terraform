variable "api_key" {
  description = "API key for NetApp Cloud Volumes Service"
}

variable "api_secret" {
  description = "API secret for NetApp Cloud Volumes Service"
}

variable "endpoint" {
  description = "Endpoint for NetApp Cloud Volumes Service"
}

variable "region" {
  description = "Region for the volume"
}

variable "name" {
  description = "Name of the volume to create"
}

variable "size" {
  description = "Size of the volume to create"
}

variable "service_level" {
  description = "Service level for the volume"
}

variable "storage_pool_id" {
  description = "ID of the storage pool for the volume"
}
