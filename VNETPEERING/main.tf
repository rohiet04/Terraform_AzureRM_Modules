module "RGDATAREAD" {
  source = "../RGDATAREAD"
}

data "azurerm_virtual_network" "vn1" {
  name                = var.vn1
  resource_group_name = module.RGDATAREAD.rgdetails_name
}

data "azurerm_virtual_network" "vn2" {
  name                = var.vn2
  resource_group_name = module.RGDATAREAD.rgdetails_name
}



resource "azurerm_virtual_network_peering" "vnet1peering" {
  name                      = var.vnetpeername1
  resource_group_name       = module.RGDATAREAD.rgdetails_name
  virtual_network_name      = data.azurerm_virtual_network.vn1.name
  remote_virtual_network_id = data.azurerm_virtual_network.vn2.id
}


resource "azurerm_virtual_network_peering" "vnet2peering" {
  name                      = var.vnetpeername2
  resource_group_name       = module.RGDATAREAD.rgdetails_name
  virtual_network_name      = data.azurerm_virtual_network.vn2.name
  remote_virtual_network_id = data.azurerm_virtual_network.vn1.id
}
