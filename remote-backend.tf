########################
# Backend
########################
terraform {
       backend "http" {
            address = "https://objectstorage.ap-melbourne-1.oraclecloud.com/p/uVKbA_QrKnGENgYa4uQoiQrfwrJMnTWy1Fe1NMpdW836OAxpQGsQNHB95BppiIPF/n/ax30wocugwei/b/jenkins.bryk.ai-terraform/o/terraform.tfstate"
            update_method = "PUT"
       }
}


data "terraform_remote_state" "oci" {
  backend = "http"
  config = {
    address = "https://objectstorage.ap-melbourne-1.oraclecloud.com/p/uVKbA_QrKnGENgYa4uQoiQrfwrJMnTWy1Fe1NMpdW836OAxpQGsQNHB95BppiIPF/n/ax30wocugwei/b/jenkins.bryk.ai-terraform/o/terraform.tfstate"
   }
}

