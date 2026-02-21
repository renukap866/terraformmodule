azurerm_resource_group_name = "tango-rg"
location = "East US"

vnet_name = "tango-vnet"
vnet_address_space = "192.168.0.0/16"

subnets = {
  "app-subnet" = "192.168.1.0/24"
}

subnet_address_prefix = "192.168.1.0/24"

azurerm_public_ip_count = 2
azurerm_public_ip_name_prefix = "tango-pip"
azurerm_public_ip_sku = "Standard"
azurerm_public_ip_allocation_method = "Static"
azurerm_public_ip_domain_name_label_prefix = "tango-vm"

network_interface_name = "tango-nic"

virtual_machine_name = "tango-vm"
vm_size = "Standard_DS1_v2"

storage_os_disk_name = "tango-os-disk"
caching = "ReadWrite"
create_option = "FromImage"
managed_disk_type = "Standard_LRS"

storage_image_publisher = "MicrosoftWindowsServer"
storage_image_offer = "WindowsServer"
storage_image_sku = "2019-Datacenter"
storage_image_version = "latest"

admin_username = "adminuser"
admin_password = "P@ssw0rd1234!"
data_disk_size_gb = 100
nsg_name = "tango-nsg"




































