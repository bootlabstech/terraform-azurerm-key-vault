variable "key_vault_name" {
  type        = string
  description = "key vault name"
}
variable "location" {
  type        = string
  description = "location of the key vault"
}
variable "resource_group" {
  type        = string
  description = "resource group of the key vault"
}
variable "soft_delete_retention_days" {
  type        = number
  description = "how much is the soft delete retention days for the key vault"
}
variable "purge_protection_enabled" {
  type        = bool
  description = "whether purge_protection is enabledfor the key vault"
}
variable "sku_name" {
  type        = string
  description = "sku for the key vault"
}
variable "monitor_name" {
  type        = string
  description = "monitor_name for the key vault"
}
