terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
#backend "azurerm" {
 #     resource_group_name  = "Mansoor"
  #    storage_account_name = "manstorage"
   #   container_name       = "mancontainer"
    #  key                  = "key.tfstate"
  #}

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

resource "azurerm_storage_account" "manstorage" {
  name                     = "manstorage"
  resource_group_name      = azurerm_resource_group.HR.name
  location                 = azurerm_resource_group.HR.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

    }


resource "azurerm_storage_container" "mancontainer" {
  name                  = "mancontainer"
  storage_account_name  = azurerm_storage_account.manstorage.name
  container_access_type = "private"
}