
resource "azurerm_disk_encryption_set" "desdvorg" {
  count               = var.des_enabled ? 1 : 0
  name                = "des-${var.name}"
  resource_group_name = var.rg
  location            = var.loc
  key_vault_key_id    = azurerm_key_vault_key.generated[0].id

  identity {
    type = "SystemAssigned"
  }
}