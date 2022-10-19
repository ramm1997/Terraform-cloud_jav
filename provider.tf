# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.10.0"
    }
  }

  required_version = ">= 1.2.3"
}

provider "azurerm" {
  features {}
}




