output "subnet_ids" {
  description = "The IDs of the created subnets"
  value       = { for s in azurerm_subnet.subnets : s.name => s.id }
}
