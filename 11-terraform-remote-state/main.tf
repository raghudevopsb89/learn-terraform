provider "azurerm" {
  features {}
}


terraform {
  backend "azurerm" {
    resource_group_name  = "denmark-east-rg"
    storage_account_name = "rdevopsb89"
    container_name       = "tfstates"
    key                  = "demo/terraform.tfstate"
  }
}

output "test" {
  value = "test"
}

