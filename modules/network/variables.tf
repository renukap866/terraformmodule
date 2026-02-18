variable "resource_group_name" { type = string }
variable "location" { type = string }

variable "vnet_name" { type = string }
variable "vnet_address_space" { type = string }

variable "subnets" {
  description = "Map of subnet names to address prefixes"
  type        = map(string)
}



