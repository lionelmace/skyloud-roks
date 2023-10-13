##############################################################################
# IBM Cloud Provider
##############################################################################

terraform {
  required_version = ">=1.5"
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "1.58.1"
    }
    logdna = {
      source  = "logdna/logdna"
      version = ">= 1.14.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }

  }
}

# provider "kubernetes" {
#   config_path = "<your_kubeconfig_path>"
# }

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region
}

##############################################################################