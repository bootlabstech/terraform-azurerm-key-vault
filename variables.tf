variable "name" {
  type        = string
  description = "key vault name"
}
variable "location" {
  type        = string
  description = "location of the key vault"
}
variable "resource_group_name" {
  type        = string
  description = "resource group of the key vault"
}
variable "sku_name" {
  type        = string
  description = "sku for the key vault"
}

variable "enabled_for_deployment" {
  type        = bool
  description = "Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault."
  default = true
}
variable "enabled_for_disk_encryption" {
  type        = bool
  description = " Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys."
  default = true
}
variable "enabled_for_template_deployment" {
  type        = bool
  description = "Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault."
  default = true
}
variable "enable_rbac_authorization" {
  type        = bool
  description = "Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions."
  default = false
}
variable "soft_delete_retention_days" {
  type        = number
  description = "how much is the soft delete retention days for the key vault"
  default = 7
}
variable "purge_protection_enabled" {
  type        = bool
  description = "whether purge_protection is enabledfor the key vault"
  default = true
}

variable "public_network_access_enabled" {
  type        = bool
  description = "monitor_name for the key vault"
  default = true
}