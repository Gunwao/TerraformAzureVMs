variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources"
  type        = string
}

variable "location" {
  description = "The location/region in which to create the resources"
  type        = string
}

variable "address_space" {
  description = "The address space that is used by the virtual network"
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet"
  type        = list(string)
}

variable "windows_vm_name" {
  description = "The name of the windows virtual machine"
  type        = string
}

variable "linux_vm_name" {
  description = "The name of the linux virtual machine"
  type        = string
}

variable "admin_username" {
  description = "The name of the administrative account"
  type        = string
}

variable "admin_password" {
  description = "The password of the administrative account"
  type        = string
  sensitive   = true
}
