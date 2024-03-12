
variable "deploy_environment" {
  description = "The environment in which the resources will be created."
  default = "dev"
}

variable "org_name" {
  description = "The name of the organization."
  default = "anoa"
}

variable "environment" {
  description = "The environment in which the resources will be created."
  default = "public"
}

variable "workload_name" {
  description = "The name of the workload."
  default = "storage"
}

variable "location" {
  description = "The location/region where the resources will be created."
  default     = "eastus"
}