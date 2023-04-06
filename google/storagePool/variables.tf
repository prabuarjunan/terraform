variable "api_key" {
  description = "API key for NetApp Cloud Volumes Service"
}

variable "api_url" {
  description = "API URL for NetApp Cloud Volumes Service"
}

variable "project_id" {
  description = "GCP project ID"
}

variable "region" {
  description = "GCP region for the storage pool and access group"
}

variable "access_group_name" {
  description = "Name of the volume access group"
}

variable "vpc_name" {
  description = "Name of the VPC for the volume access group"
}

variable "storage_pool_name" {
  description = "Name of the storage pool to create"
}

variable "storage_type" {
  description = "Type of storage to use for the storage pool"
}

variable "performance_level" {
  description = "Performance level for the storage pool"
  default     = "basic"
}
