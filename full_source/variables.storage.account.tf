
variable "storage_account_tier" {
  description = "The storage account tier."
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "The storage account replication type."
  default     = "LRS"
}

variable "storage_account_container_name" {
  description = "The name of the storage account container."
  default     = "example-container"
}