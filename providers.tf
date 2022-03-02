##############################################################################
# Terraform Providers
##############################################################################

terraform {
required_version = ">=1.0.0, <2.0"
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}

##############################################################################


##############################################################################
# Provider For Account 1
##############################################################################

provider ibm {
  ibmcloud_api_key = var.ibmcloud_account_1_api_key
}

##############################################################################


##############################################################################
# Provider For Account 2
##############################################################################

provider ibm {
  alias            = "account_2"
  ibmcloud_api_key = var.ibmcloud_account_2_api_key
}

##############################################################################
