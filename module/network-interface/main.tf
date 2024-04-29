resource "azurerm_network_interface" "nic" {
  count = var.vm_count  
  name                = "${var.vm_prefix}-vm-0${count.index}"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "${var.vm_prefix}-vm-0${count.index}-ipconfig"
    subnet_id                     = var.subnet_id 
    private_ip_address_allocation = "Dynamic"
  }
}