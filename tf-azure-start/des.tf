
resource "azurerm_disk_encryption_set" "exampledesdvorg" {
  name                = "des"
  resource_group_name = azurerm_resource_group.rg-wtf.name
  location            = azurerm_resource_group.rg-wtf.location
  key_vault_key_id    = azurerm_key_vault_key.generated2dvorg.id

  identity {
    type = "SystemAssigned"
  }
}