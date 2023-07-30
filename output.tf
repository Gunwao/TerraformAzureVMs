output "windows_public_ip" {
  description = "The public IP address of the Windows VM"
  value       = module.windows_vm.public_ip
}

output "linux_public_ip" {
  description = "The public IP address of the Linux VM"
  value       = module.linux_vm.public_ip
}
