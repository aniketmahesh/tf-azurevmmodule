terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.100.0"
    }
  }
}

provider "azurerm" {
  features {
}
}

module "resourceGroup" {
  source = "./module/Resource-group"
  resource_group_name = var.resource_group_name
  location = var.location
}

module "virtualNetwork" {
source = "./module/virtual-network"
resource_group_name = module.resourceGroup.resource_group_name
location = var.location
virtual_network_name = var.virtual_network_name
address_space = var.address_space

subnet_name = var.subnet_name
address_prefixes = var.address_prefixes

}

module "networkInterface" {
  source = "./module/network-interface"
  resource_group_name = module.resourceGroup.resource_group_name
  location = var.location
  vm_count = var.vm_count
  vm_prefix = var.vm_prefix
  subnet_id = module.virtualNetwork.subnet_id
}

module "virtualMachine" {
  source = "./module/virtual-machine"
  resource_group_name = module.resourceGroup.resource_group_name
  location = var.location

  vm_count = var.vm_count
  vm_prefix = var.vm_prefix
  vm_size = var.vm_size
  network_interface_ids = module.networkInterface.network_interface_ids

  admin_username = var.admin_username
  admin_password = var.admin_password


}

