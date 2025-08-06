terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "805cc58a-b2c1-4e91-97ec-b0ba35c3dc96"
}

# Resource block 1
resource "azurerm_resource_group" "HR" {
  name     = "Mansoor"
  location = "West Europe"
}

