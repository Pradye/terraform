module "oci-infra" {
  source                       = "./modules"
  instance_availability_domain = "vuBe:AP-MELBOURNE-1-AD-1"
  compartment_id               = "ocid1.compartment.oc1..aaaaaaaamj64oxe6l5353svapanqoql6xjkbefr4dbszt74vxjp43lgnfydq"
  instance_shape               = "VM.Standard.E3.Flex"
  shape_config = {
    memory_in_gbs = 16
    ocpus = "1"
  }
  subnet_id                    = "ocid1.subnet.oc1.ap-melbourne-1.aaaaaaaapnyykynxapkx7z2ztiro5fs4dytozkz4z5nwuzvbuae5m7aqbrla"
  image_id                     = "ocid1.image.oc1.ap-melbourne-1.aaaaaaaavunsytp64wl56jburtsm6dpjww4ncg45wcbr5grxxnlw3rhkm6eq"
  tenancy_ocid                 = "ocid1.tenancy.oc1..aaaaaaaapzoexmi4wt3amsj6a3ognfkzwanrof6ff7kzv2oem2h5dgsx2d6q"
  display_name                 = "Test-app-1"
  bastion_name                 = "SSH-instances-sandpit"
  bastion_cidr  = [
    "192.168.0.0/16"
  ]
  bastion_subnet_id            = "ocid1.subnet.oc1.ap-melbourne-1.aaaaaaaapnyykynxapkx7z2ztiro5fs4dytozkz4z5nwuzvbuae5m7aqbrla"
bastion_machine_user_name = "opc"
}

########################
# Backend
########################
terraform {
       backend "http" {
            address = "https://objectstorage.ap-melbourne-1.oraclecloud.com/p/uVKbA_QrKnGENgYa4uQoiQrfwrJMnTWy1Fe1NMpdW836OAxpQGsQNHB95BppiIPF/n/ax30wocugwei/b/jenkins.bryk.ai-terraform/o/terraform.tfstate"
            update_method = "PUT"
       }
}