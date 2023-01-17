resource "oci_bastion_session" "create_session" {
  depends_on = [
    oci_core_instance.launch_instance,
    oci_bastion_bastion.new_bastion,
    time_sleep.wait_in_seconds
  ]
  #Required
  //bastion_id = length(data.oci_bastion_bastions.get_bastions.bastions[0].id) >= 1 ? data.oci_bastion_bastions.get_bastions.bastions[0].id : oci_bastion_bastion.new_bastion[0].id
  bastion_id = oci_bastion_bastion.new_bastion.id
  key_details {
    #Required
    public_key_content = file("C:/PradeepM/SSH-keys/Oracle-Bastion/ssh-key-2022-12-06.key.pub")
  }
  target_resource_details {
    #Required
    session_type = var.session_type

    #Optional

    target_resource_id                         = oci_core_instance.launch_instance.id
    target_resource_operating_system_user_name = var.bastion_machine_user_name

  }

}

