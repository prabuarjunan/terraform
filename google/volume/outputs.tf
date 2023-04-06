output "volume_id" {
  description = "ID of the created volume"
  value       = netapp_cvs_volume.cvs_volume.id
}
