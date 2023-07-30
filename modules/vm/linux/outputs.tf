output "public_ip" {
  description = "The public IP address of the Linux VM"
  value       = azurerm_linux_virtual_machine.linuxvm.public_ip_address
}
