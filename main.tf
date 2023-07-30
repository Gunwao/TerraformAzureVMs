provider "azurerm" {
  features {}
  version = "~>2.0"
}

module "network" {
  source = "./modules/network"
  
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes
}

module "windows_vm" {
  source = "./modules/vm/windows"
  
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_name             = var.windows_vm_name
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_id = module.network.network_interface_id
}

module "linux_vm" {
  source = "./modules/vm/linux"
  
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_name             = var.linux_vm_name
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_id = module.network.network_interface_id
}

