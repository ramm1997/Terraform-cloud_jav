# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.4.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


provider "kubernetes" {
  host                        = "${azurerm_kubernetes_cluster.example.kube_config.0.host}"
  username                    = "${azurerm_kubernetes_cluster.example.kube_config.0.username}"
  password                    = "${azurerm_kubernetes_cluster.example.kube_config.0.password}"
  client_certificate        = "${base64decode(azurerm_kubernetes_cluster.example.kube_config.0.client_certificate)}"
  client_key                = "${base64decode(azurerm_kubernetes_cluster.example.kube_config.0.client_key)}"
  cluster_ca_certificate    = "${base64decode(azurerm_kubernetes_cluster.example.kube_config.0.cluster_ca_certificate)}"
}