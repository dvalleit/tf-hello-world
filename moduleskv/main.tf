resource "azurerm_key_vault" "kvdvorg" {
  name                        = var.name
  location                    = var.loc
  resource_group_name         = var.rg
  enabled_for_disk_encryption = true
  tenant_id                   = var.tenant
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

}

resource "azurerm_key_vault_access_policy" "azcli_access_policy" {
  key_vault_id = azurerm_key_vault.kvdvorg.id

  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = var.azclioid

  key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "GetRotationPolicy",
      "SetRotationPolicy",
      "Rotate",
      "Encrypt",
      "Decrypt",
      "UnwrapKey",
      "WrapKey",
      "Verify",
      "Sign",
      "Purge",
      "Release",
  ]

  secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
  ]

  certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers",
      "Purge",
  ]

  storage_permissions = [
    "Get",
  ]
}

resource "azurerm_key_vault_access_policy" "user_access_policy" {
  key_vault_id = azurerm_key_vault.kvdvorg.id

  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = "7ee7aecd-1ec9-4ace-afca-c2cd12c60500"

  key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "GetRotationPolicy",
      "SetRotationPolicy",
      "Rotate",
      "Encrypt",
      "Decrypt",
      "UnwrapKey",
      "WrapKey",
      "Verify",
      "Sign",
      "Purge",
      "Release",
  ]

  secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
  ]

  certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers",
      "Purge",
  ]

  storage_permissions = [
    "Get",
  ]
}

resource "azurerm_key_vault_access_policy" "des_access_policy" {
  count               = var.des_enabled ? 1 : 0
  key_vault_id = azurerm_key_vault.kvdvorg.id

  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = azurerm_disk_encryption_set.desdvorg[0].identity[0].principal_id

  key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "GetRotationPolicy",
      "SetRotationPolicy",
      "Rotate",
      "Encrypt",
      "Decrypt",
      "UnwrapKey",
      "WrapKey",
      "Verify",
      "Sign",
      "Purge",
      "Release",
  ]

  secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
  ]

  certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers",
      "Purge",
  ]

  storage_permissions = [
    "Get",
  ]
}

data "azurerm_client_config" "current" {}