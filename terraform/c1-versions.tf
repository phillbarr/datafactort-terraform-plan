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

resource "azurerm_data_factory" "mydatafactory" {
  name                = "mydatafactory123466898708"
  location            = var.location
  resource_group_name = var.resource_group_name
}




resource "azurerm_" "myruntime" {
  name                = "data_factory_integration_runtime_azure_ssis_5564747476476457"
  data_factory_id     = azurerm_data_factory.mydatafactory.id
  resource_group_name = var.resource_group_name
  location            = var.location

  node_size = "Standard_D8_v3"
}



