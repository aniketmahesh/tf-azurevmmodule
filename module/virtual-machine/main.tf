

resource "azurerm_windows_virtual_machine" "vm" {
  
  count = var.vm_count
  name                = "${var.vm_prefix}-vm-0${count.index+1}"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [var.network_interface_ids[count.index]]

  os_disk {
    name = "${var.vm_prefix}-vm-0${count.index}-OsDisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}