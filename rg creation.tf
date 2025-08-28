terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }

  }
backend "azurerm" {
      resource_group_name  = "mansoor"
      storage_account_name = "mqstorage123"
      container_name       = "mancontainer"
      key                  = "key.tfstate"
 }

}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "3142e9bb-dc6c-403c-9fcf-cbf1d0163394"
}


resource "azurerm_resource_group" "HR2" {
  name     = "Mansoor2"
  location = "West Europe"
}



#resource "azurerm_storage_account" "man2storage" {
 # name                     = "man2storage"
  #resource_group_name      = azurerm_resource_group.HR2.name
  #location                 = azurerm_resource_group.HR2.location
  #account_tier             = "Standard"
  #account_replication_type = "GRS"

   # }


#resource "azurerm_storage_container" "man2container" {
 # name                  = "man2container"
  #storage_account_id  = azurerm_storage_account.man2storage.id
  #container_access_type = "private"
#}