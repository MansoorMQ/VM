terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = "5a6beecc-1476-4476-8268-ca3ff87711b1"
}
