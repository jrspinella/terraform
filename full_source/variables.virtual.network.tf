
variable "vnet_name" {
  description = "The name of the virtual network."
  default     = "example-network"
}

variable "vnet_address_space" {
  description = "The address space of the virtual network."
  default     = ["10.0.0.1/16"]
}

variable "subnet_name" {
  description = "The name of the subnet."
  default     = "internal"
}

variable "subnet_address_prefix" {
  description = "The address prefix of the subnet."
  default     = ["10.0.1.1/26"]
}