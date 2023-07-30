variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources"
  type        = string
}

variable "location" {
  description = "The location/region in which to create the resources"
  type        = string
}

variable "windows_vm_name" {
  description = "The name of the windows virtual machine"
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

variable "network_interface_id" {
  description = "The ID of the network interface that will be attached to the VM"
  type        = string
}
