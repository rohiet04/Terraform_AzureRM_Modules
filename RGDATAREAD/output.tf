
output "rgdetails_name" {
  value = data.azurerm_resource_group.existing_rg.name
}

output "rgdetails_location" {
  value = data.azurerm_resource_group.existing_rg.location
}
