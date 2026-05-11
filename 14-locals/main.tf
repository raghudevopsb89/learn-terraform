locals {
  a = 10
}

output "a" {
  value = local.a
}

resource "azurerm_public_ip" "frontend" {
  name                = "frontend"
  location            = "Denmark East"
  resource_group_name = "denmark-east-rg"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "frontend" {
  name                = "frontend-nic"
  location            = "Denmark East"
  resource_group_name = "denmark-east-rg"

  ip_configuration {
    name                          =  "frontend-nic"
    subnet_id                     = "/subscriptions/3f2e42e1-ca06-4a99-8c56-be8d8ba306db/resourceGroups/denmark-east-rg/providers/Microsoft.Network/virtualNetworks/rhel10-vmVNET/subnets/rhel10-vmSubnet"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.frontend.id
  }
}

provider "azurerm" {
  features {}
}
