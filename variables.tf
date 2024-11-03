
variable "resource_group_name" {
  description = "Name of the resource group where the resources will be deployed"
  type        = string
}

variable "name" {
  description = "Name of the keyvault"
  type        = string
}


variable "sku" {
  description = "sku of the keyvault"
  type        = string
  default     = "standard"
  validation {
    condition     = contains(["standard", "premium"], var.sku)
    error_message = "sku can be only standard or premium"
  }
}

variable "enabled_for_deployment" {
  description = "Boolean flag to specify wether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault"
  type        = bool
  default     = false
}


variable "enabled_for_disk_encryption" {
  description = "Boolean flag to specify wether Azure Disk Encryption is permitted to retrieve secrets from the key vault and uwrap keys"
  type        = bool
  default     = false
}


variable "enabled_for_template_deployment" {
  description = "Boolean flag to specify wether Azure Resource Manager is permitted to retrieve secrets from the key vault"
  type        = bool
  default     = false
}

variable "enable_rbac_authorization" {
  description = "Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions."
  type = bool
  default = false
}

variable "purge_protection_enabled" {
   description = "Is Purge Protection enabled for this Key Vault? "
   type = bool
   default =   "false"
}

variable "public_network_access_enabled" {
   description = "Whether public network access is allowed for this Key Vault."
   type = bool 
   default =   "true"
}
