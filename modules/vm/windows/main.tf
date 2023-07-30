provider "azurerm" {
  features {}
}

module "network" {
  source = "./modules/network"

  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes
}

resource "azurerm_network_interface" "windows_nic" {
  name                = "${var.windows_vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = module.network.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "linux_nic" {
  name                = "${var.linux_vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = module.network.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

module "windows_vm" {
  source = "./modules/vm/windows"

  resource_group_name  = var.resource_group_name
  location             = var.location
  windows_vm_name      = var.windows_vm_name
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  network_interface_id = azurerm_network_interface.windows_nic.id
}

module "linux_vm" {
  source = "./modules/vm/linux"

  resource_group_name  = var.resource_group_name
  location             = var.location
  linux_vm_name        = var.linux_vm_name
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  network_interface_id = azurerm_network_interface.linux_nic.id
}
