resource "oci_bastion_bastion" "new_bastion" {
  #Required
  bastion_type     = var.bastion_bastion_type
  compartment_id   = var.compartment_id
  target_subnet_id = var.bastion_subnet_id
  //count            = length(data.oci_bastion_bastions.get_bastions.bastions[0].id) >= 1 ? 0 : 1
  depends_on = [
    oci_core_instance.launch_instance,
    data.oci_bastion_bastions.get_bastions
  ]
  #Optional
  name = var.bastion_name
 client_cidr_block_allow_list = var.bastion_cidr
 max_session_ttl_in_seconds = var.bastion_max_session_ttl_in_seconds
}

data "oci_bastion_bastions" "get_bastions" {
  #Required
  compartment_id = var.compartment_id

}