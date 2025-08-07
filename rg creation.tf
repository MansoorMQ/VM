terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
#backend "azurerm" {
 #     resource_group_name  = "Mansoor2"
 #     storage_account_name = "man2storage"
 #     container_name       = "man2container"
 #     key                  = "key.tfstate"
  #}

}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "805cc58a-b2c1-4e91-97ec-b0ba35c3dc96"
}

# Resource block 1
#resource "azurerm_resource_group" "HR1" {
 # name     = "Mansoor1"
  #location = "West Europe"
#}

resource "azurerm_resource_group" "HR2" {
  name     = "Mansoor2"
  location = "West Europe"
}

resource "azurerm_storage_account" "man2storage" {
  name                     = "man2storage"
  resource_group_name      = azurerm_resource_group.HR2.name
  location                 = azurerm_resource_group.HR2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

    }


resource "azurerm_storage_container" "man2container" {
  name                  = "man2container"
  storage_account_id  = azurerm_storage_account.man2storage.id
  container_access_type = "private"
}