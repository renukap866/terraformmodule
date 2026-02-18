terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-centralindia"
    storage_account_name = "csg10030000a25ca4a5"
    container_name       = "test"
    key                  = "prod/terraform.tfstate"
  }
}








