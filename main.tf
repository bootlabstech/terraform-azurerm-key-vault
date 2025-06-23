data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "key_vault" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  sku_name                    = var.sku_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment
  enabled_for_deployment          = var.enabled_for_deployment
  enable_rbac_authorization   = var.enable_rbac_authorization
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  public_network_access_enabled = var.public_network_access_enabled

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "SetRotationPolicy",
    ]
    secret_permissions = [
      "Get", "Set","List", "Delete", "Restore"
    ]
    storage_permissions = [
      "Get",
    ]
  }
  network_acls {
    bypass = "AzureServices"
    default_action = "Allow"
  }
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}