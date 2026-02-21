variable "azurerm_resource_group_name" { type = string }
variable "location" { type = string }

variable "vnet_name" { type = string }
variable "vnet_address_space" { type = string }

variable "subnets" {
  description = "Map of subnet names to address prefixes"
  type        = map(string)
}


variable "subnet_address_prefix" { type = string }

variable "azurerm_public_ip_count" { type = number }
variable "azurerm_public_ip_name_prefix" { type = string }
variable "azurerm_public_ip_sku" { type = string }
variable "azurerm_public_ip_allocation_method" { type = string }
variable "azurerm_public_ip_domain_name_label_prefix" { type = string }

variable "network_interface_name" { type = string }
variable "virtual_machine_name" { type = string }
variable "vm_size" { type = string }
variable "storage_os_disk_name" { type = string }
variable "caching" { type = string }
variable "create_option" { type = string }
variable "managed_disk_type" { type = string }

variable "storage_image_publisher" { type = string }
variable "storage_image_offer" { type = string }
variable "storage_image_sku" { type = string }
variable "storage_image_version" { type = string }

variable "admin_username" { type = string }
variable "admin_password" { type = string }
variable "data_disk_size_gb" { type = number }
variable "nsg_name" { type = string }
















