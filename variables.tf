
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
