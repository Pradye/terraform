output "ad" {
  value       = data.oci_identity_availability_domains.availability_domains.id
  description = "Display AD details"
}

# output "bastion_id" {
#   value = length(data.oci_bastion_bastions.get_bastions.bastions[0].id) >= 1 ? data.oci_bastion_bastions.get_bastions.bastions[0].id : oci_bastion_session.create_session.id
# }

output "instance_id" {
  value = oci_core_instance.launch_instance
}

output "session_ssh_cmd" {
value = oci_bastion_session.create_session.ssh_metadata
  
}