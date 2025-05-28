resource "azurerm_key_vault_key" "generated" {
  count        = var.key ? 1 : 0
  name         = "des-key1"
  key_vault_id = azurerm_key_vault.kvdvorg.id
  key_type     = "RSA"
  key_size     = 2048

  key_opts = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]

  rotation_policy {
    automatic {
      time_before_expiry = "P30D"
    }

    expire_after         = "P90D"
    notify_before_expiry = "P29D"
  }
}

