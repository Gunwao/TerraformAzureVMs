output "public_ip" {
  description = "The public IP address of the Windows VM"
  value       = azurerm_windows_virtual_machine.windowsvm.public_ip_address
}
