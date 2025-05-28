module "moduleskv1" {
 source  = "../moduleskv"
 
  name        = "firstkvdvorg"
  loc         = azurerm_resource_group.rg-wtf.location
  rg          = azurerm_resource_group.rg-wtf.name
  tenant      = data.azurerm_client_config.current.tenant_id
  azclioid    = data.azurerm_client_config.current.object_id
  key         = true
  des_enabled = true
}

module "moduleskv2" {
 source  = "../moduleskv"
 
  name = "secondkvdvorg"
  loc = azurerm_resource_group.rg-wtf.location
  rg = azurerm_resource_group.rg-wtf.name
  tenant = data.azurerm_client_config.current.tenant_id
  azclioid = data.azurerm_client_config.current.object_id
  key         = false
  des_enabled = false
}