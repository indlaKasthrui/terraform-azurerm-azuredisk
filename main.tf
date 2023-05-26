resource "azurerm_managed_disk" "example" {
  name                 = var.diskname
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = var.acc_type
  create_option        = var.create
  disk_size_gb         = var.size
}

resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}
