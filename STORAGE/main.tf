module "RGDATAREAD" {
  source = "../RGDATAREAD"
}


resource "azurerm_storage_account" "stgaccnt" {
  for_each                 = toset(var.stgnames)
  name                     = each.value
  resource_group_name      = module.RGDATAREAD.rgdetails_name
  location                 = module.RGDATAREAD.rgdetails_location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}