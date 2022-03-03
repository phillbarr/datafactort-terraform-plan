terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
  }
}


provider "azurerm" {
 features {}          
}

terraform {
  backend "azurerm" {
  }
}

resource "azurerm_resource_group" "myrg" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_data_factory" "mydatafactory" {
  name                = "mydatafactory123466898708"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
}


