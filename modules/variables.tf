variable "instance_availability_domain" {
  type = string
}
variable "compartment_id" {
  type = string
}
variable "instance_shape" {
  type = string
}

variable "shape_config" {
  type = object({
    memory_in_gbs = string
    ocpus         = string
  })
}

variable "cloud_agent_plugins" {
  description = "Whether each Oracle Cloud Agent plugins should be ENABLED or DISABLED."
  type        = map(string)
  default = {
    autonomous_linux        = "ENABLED"
    bastion                 = "ENABLED"
    block_volume_mgmt       = "DISABLED"
    custom_logs             = "ENABLED"
    management              = "DISABLED"
    monitoring              = "ENABLED"
    osms                    = "ENABLED"
    run_command             = "ENABLED"
    vulnerability_scanning  = "ENABLED"
    java_management_service = "DISABLED"
  }
  #* need to craft a validation condition at some point
}


variable "subnet_id" {
  type = string
}
variable "display_name" {
  type = string
}
variable "image_id" {
  type = string
}
variable "tenancy_ocid" {
  type = string
}

## Bastion
variable "bastion_bastion_type" {
  default = "standard"
}
variable "bastion_subnet_id" {

}

variable "bastion_name" {

}

variable "bastion_cidr" {}
variable "bastion_max_session_ttl_in_seconds" {
}

# Bastion Session

variable "session_type" {
  type    = string
  default = "MANAGED_SSH"
}

variable "bastion_machine_user_name" {
}

variable "time_sleep" {
}

variable "bastion_session_public_key_content" {
  
}
