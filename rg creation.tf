terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
backend "azurerm" {
      resource_group_name  = "Mansoor1"
      storage_account_name = "man1storage"
      container_name       = "mancontainer"
      key                  = "key.tfstate"
  }

}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "805cc58a-b2c1-4e91-97ec-b0ba35c3dc96"
}

# Resource block 1
resource "azurerm_resource_group" "HR1" {
  name     = "Mansoor1"
  location = "West Europe"
}

resource "azurerm_storage_account" "man1storage" {
  name                     = "man1storage"
  resource_group_name      = azurerm_resource_group.HR1.name
  location                 = azurerm_resource_group.HR1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

    }


resource "azurerm_storage_container" "mancontainer" {
  name                  = "mancontainer"
  storage_account_id  = azurerm_storage_account.man1storage.id
  container_access_type = "private"
}