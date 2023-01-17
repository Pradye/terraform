resource "oci_core_instance" "launch_instance" {
  availability_domain = var.instance_availability_domain
  compartment_id      = var.compartment_id
  display_name        = var.display_name
  shape               = var.instance_shape

  shape_config {
    memory_in_gbs = var.shape_config.memory_in_gbs
    ocpus         = var.shape_config.ocpus
  }

  agent_config {
    are_all_plugins_disabled = false
    is_management_disabled   = false
    is_monitoring_disabled   = false

    plugins_config {
      desired_state = var.cloud_agent_plugins.autonomous_linux
      name          = "Oracle Autonomous Linux"
    }
    plugins_config {
      desired_state = var.cloud_agent_plugins.bastion
      name          = "Bastion"
    }
    plugins_config {
      desired_state = var.cloud_agent_plugins.block_volume_mgmt
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = var.cloud_agent_plugins.custom_logs
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = var.cloud_agent_plugins.management
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = var.cloud_agent_plugins.monitoring
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = var.cloud_agent_plugins.osms
      name          = "OS Management Service Agent"
    }
    plugins_config {
      desired_state = var.cloud_agent_plugins.run_command
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = var.cloud_agent_plugins.vulnerability_scanning
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = var.cloud_agent_plugins.java_management_service
      name = "Oracle Java Management Service"
    }
  }


  create_vnic_details {
    assign_private_dns_record = "true"
    assign_public_ip          = "false"
    subnet_id                 = var.subnet_id
  }

  source_details {
    source_id   = var.image_id
    source_type = "image"
  }
  depends_on = [
    data.oci_identity_availability_domains.availability_domains
  ]
}

data "oci_identity_availability_domains" "availability_domains" {
  #Required
  compartment_id = var.tenancy_ocid
}


