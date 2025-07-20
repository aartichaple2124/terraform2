data "azurerm_resource_group" "example" {
  name = "RG"
}

data "azurerm_subnet" "example" {
  name                 = "default"
  virtual_network_name = "vnet"
  resource_group_name  = data.azurerm_resource_group.example.name
}