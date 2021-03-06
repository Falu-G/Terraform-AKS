terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>2.0"
        }
    }
    backend "azurerm" {
            resource_group_name  = "MyLabs_group"
            storage_account_name = "gitlabstorageact"
            container_name       = "tfstate"
            key                  = "codelab.microsoft.tfstate"
        
    }
}

provider "azurerm" {
    features {}

    
}