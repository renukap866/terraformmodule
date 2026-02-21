terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "1744cbdb-aa0a-44e7-93c7-8f603b704af3"
  tenant_id       = "f17862e7-5e93-4ca4-a046-ab584ec3d8fb"
}


module "network" {
  source = "./modules/network"

  resource_group_name = var.azurerm_resource_group_name
  location            = var.location

  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space

  subnets = var.subnets
}


module "compute" {
  source = "./modules/compute"

  resource_group_name = var.azurerm_resource_group_name
  location            = var.location
  subnet_id           = module.network.subnet_ids["app-subnet"]

  nic_name = var.network_interface_name
  vm_name  = var.virtual_machine_name
  vm_size  = var.vm_size

  admin_username = var.admin_username
  admin_password = var.admin_password
  data_disk_size_gb = var.data_disk_size_gb
  network_security_group_name = var.nsg_name
}






























































