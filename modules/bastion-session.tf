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
    #public_key_content = file("C:/PradeepM/SSH-keys/Oracle-Bastion/ssh-key-2022-12-06.key.pub")
        public_key_content =  <<-EOF
             ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBen3EilHRsdwmv5s9lJ30Fqlpy2kVUtkEp4ctDYDnLPVINSTIY1zUqZ0rIYswocbVJC8TvEtXZBnyjlqBtuAVUv0k/+IRWAa7wMC2EX7Fa8nRRS9KUA7cW2C1dBa5M6xg6fkt7GCh9XNE96jVojsAMf1vvVy5hIr6QcCZHI6KnbaiEJ9Un4P+pZbRvg5fSTC8RN7wacWlEnYwPIay6HPFYLb1iTnBcG38Piz9vwcf1c/OLPwFYTib074mwtrQ6oxNfyVlyafcrnrFtmFE6YuZFbCwu3chaxPYYbc9FSRQ0/iFBBQVCrAtcjgKQyQGOx3q1hm2Qkb4mTthlEBtAHxd ssh-key-2022-12-06
              EOF
  }
  target_resource_details {
    #Required
    session_type = var.session_type

    #Optional

    target_resource_id                         = oci_core_instance.launch_instance.id
    target_resource_operating_system_user_name = var.bastion_machine_user_name

  }

}

