
resource "azurerm_key_vault" "example-dvorg" {
  name                        = "examplekeyvault-dvorg"
  location                    = azurerm_resource_group.rg-wtf.location
  resource_group_name         = azurerm_resource_group.rg-wtf.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

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


  access_policy {
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


  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = "dcd5a9e0-5cb5-4fe1-a87b-878f41d3d1fc"

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
}

resource "azurerm_key_vault" "example3" {
  name                        = "examplekeyvault3"
  location                    = azurerm_resource_group.rg-wtf.location
  resource_group_name         = azurerm_resource_group.rg-wtf.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

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


  access_policy {
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


  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = "dcd5a9e0-5cb5-4fe1-a87b-878f41d3d1fc"

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
}
